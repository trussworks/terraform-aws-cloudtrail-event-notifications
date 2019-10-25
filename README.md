<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
Enables notifications for any changes to CloudTrail. Notifications are sent to an SNS topic.

Creates the following resources:

* CloudWatch event rule to filter AWS CloudTrail API calls
* CloudWatch event target to send to SNS topic

## Usage

```hcl
module "cloudtrail_notifications" {
  source = "../../modules/aws-cloudtrail-notifications"

  sns_topic_name = "slack-events"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| sns\_topic\_name | The name of the SNS topic to send CloudTrail event notifications. | string | n/a | yes |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
