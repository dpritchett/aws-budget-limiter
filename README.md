# aws-budget-limiter

Small Terraform script for creating a monthly AWS budget cap with notification emails.

## Usage

- Install `terraform`. This repo was created for version `0.15.4`.
- export your AWS credentials into your local shell session:
```shell
export AWS_ACCESS_KEY_ID="AKIAXFEDWFF<redacted>"
export AWS_SECRET_ACCESS_KEY="+q+uPv+bqblZ<redacted>rqds"
```
- Clone this repo and enter the new directory:
```shell
git clone https://github.com/dpritchett/aws-budget-limiter
cd aws-budget-limiter
```
- Initialize your terraform setup (should only need to do this the first time):
```shell
teraform init
```
- Create your new AWS monthly budget by applying this terraform config:
```shell
terraform apply

# You'll see the config's proposed plan
# to add your new AWS budget and its
# notification thresholds. Type yes and
#hit enter, then terraform will execute the plan.
```

## Warnings

- If you are spending fast enough you can still go over before AWS's delayed spend counter figures it out. You'll still be on the hook for that extra spend.
- Be careful with your AWS account keys. Don't check them into a public repo or share them with anyone else. For added safety, don't use an AWS account with full access if you can avoid it.

## Resources

- [AWS Budgets Console](https://console.aws.amazon.com/billing/home#/budgets#/home)
- [Terraform download](https://www.terraform.io/downloads.html)
- [Terraform `aws_budgets_budget` resouce documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/budgets_budget#budget_type)
