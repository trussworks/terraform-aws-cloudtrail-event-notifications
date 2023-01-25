# DEPRECIATION NOTICE

This module has been deprecated and is no longer maintained. Should you need to continue to use it, please fork the repository. Thank you.

Enables notifications for any changes to CloudTrail. Notifications are sent to an SNS topic.

Creates the following resources:

- CloudWatch event rule to filter AWS CloudTrail API calls
- CloudWatch event target to send to SNS topic

## Usage

```hcl
module "cloudtrail-event-notifications" {
  source  = "trussworks/cloudtrail-event-notifications/aws"
  version = "1.0.0"

  sns_topic_name = "slack-events"
}
```

## Terraform Versions

Terraform 0.13 and later. Pin module version to `~> 3.X`. Submit pull-requests to `master` branch.

Terraform 0.12. Pin module version to `~> 2.X`. Submit pull-requests to `terraform012` branch.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_event_rule.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_rule) | resource |
| [aws_cloudwatch_event_target.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target) | resource |
| [aws_sns_topic.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/sns_topic) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_sns_topic_name"></a> [sns\_topic\_name](#input\_sns\_topic\_name) | The name of the SNS topic to send CloudTrail event notifications. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
