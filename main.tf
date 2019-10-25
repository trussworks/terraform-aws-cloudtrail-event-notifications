/**
 * Enables notifications for any changes to CloudTrail. Notifications are sent to an SNS topic.
 *
 * Creates the following resources:
 *
 * * CloudWatch event rule to filter AWS CloudTrail API calls
 * * CloudWatch event target to send to SNS topic
 *
 * ## Usage
 *
 * ```hcl
 * module "cloudtrail-event-notifications" {
 *   source  = "trussworks/cloudtrail-event-notifications/aws"
 *   version = "1.0.0"
 *
 *   sns_topic_name = "slack-events"
 * }
 * ```
 */

#
# SNS
#

data "aws_sns_topic" "main" {
  name = "${var.sns_topic_name}"
}

#
# CloudWatch Event
#

resource "aws_cloudwatch_event_rule" "main" {
  name          = "cloudtrail-api-events"
  description   = "AWS CloudTrail API events"
  event_pattern = "${file("${path.module}/event-pattern.json")}"
}

resource "aws_cloudwatch_event_target" "main" {
  rule      = "${aws_cloudwatch_event_rule.main.name}"
  target_id = "send-to-sns"
  arn       = "${data.aws_sns_topic.main.arn}"

  input_transformer = {
    input_paths {
      event = "$.detail.eventName"

      parameters = "$.detail.requestParameters"
    }

    input_template = "\"AWS CloudTrail Modification: <event> with request parameters: <parameters>\""
  }
}
