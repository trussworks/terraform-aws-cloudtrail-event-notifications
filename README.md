Enables notifications for any changes to CloudTrail. Notifications are sent to an SNS topic.

Creates the following resources:

* CloudWatch event rule to filter AWS CloudTrail API calls
* CloudWatch event target to send to SNS topic

## Usage

```hcl
module "cloudtrail-event-notifications" {
  source  = "trussworks/cloudtrail-event-notifications/aws"
  version = "1.0.0"

  sns_topic_name = "slack-events"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| sns\_topic\_name | The name of the SNS topic to send CloudTrail event notifications. | `string` | n/a | yes |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
