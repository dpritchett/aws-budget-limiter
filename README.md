# aws-budget-limiter

Small Terraform script for creating a monthly AWS budget cap with notification emails.

## How to use this AWS budget script:

### Install `terraform`

This repo was created for version `0.15.4`. [Download Terraform here](https://www.terraform.io/downloads.html).

### Create your AWS access keys

Create some AWS credentials and export them into your local shell session:

- Open the [Your Security Credentials](https://console.aws.amazon.com/iam/home?region=us-east-1#/security_credentials) page and click into Access Keys. Create a new access key.
    ![static/secret_access_key.png](static/secret_access_key.png)
- Export this pair of keys into your local shell:
```shell
export AWS_ACCESS_KEY_ID="AKIAXYPRA6HBNUZKOG7T"
export AWS_SECRET_ACCESS_KEY="XwIr/9nKxyiq9VqKE+SDLBxK3jiC9qCxrNHZvI+j"
```

### Download this `aws-budget-limiter` repository

Clone this repo and enter the new directory:
```shell
git clone https://github.com/dpritchett/aws-budget-limiter
cd aws-budget-limiter
```

### Initialize your Terraform setup

Initialize your terraform setup (should only need to do this the first time):
```shell
terraform init
```

### Run the terraform plan to create your new AWS budget

Create your new AWS monthly budget by applying this terraform config:
```shell
terraform apply

# You'll see the config's proposed plan
# to add your new AWS budget and its
# notification thresholds. Type yes and
#hit enter, then terraform will execute the plan.
```

Review your new budget at the [AWS budgets console](https://console.aws.amazon.com/billing/home#/budgets#/home):

![budget_web_view.png](static/budget_web_view.png)

## Warnings

- If you are spending fast enough you can still go over before AWS's delayed spend counter figures it out. You'll still be on the hook for that extra spend.
- Be careful with your AWS account keys. Don't check them into a public repo or share them with anyone else. For added safety, don't use an AWS account with full access if you can avoid it.

## Resources

- [AWS Budgets Console](https://console.aws.amazon.com/billing/home#/budgets#/home)
- [Terraform download](https://www.terraform.io/downloads.html)
- [Terraform `aws_budgets_budget` resouce documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/budgets_budget#budget_type)


License: MIT
Contributors: Daniel Pritchett [twitter.com/dpritchett](https://twitter.com/dpritchett)