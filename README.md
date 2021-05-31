# aws-budget-limiter

Small Terraform script for creating a monthly AWS budget cap with notification emails.

## Warnings

- If you are spending fast enough you can still go over before AWS's delayed spend counter figures it out. You'll still be on the hook for that extra spend.
- Be careful with your AWS account keys. Don't check them into a public repo or share them with anyone else. For added safety, don't use an AWS account with full access if you can avoid it.

## Resources

- [Terraform download](https://www.terraform.io/downloads.html)
- [Terraform `aws_budgets_budget` resouce documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/budgets_budget#budget_type)
