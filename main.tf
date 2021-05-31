locals {
  max_monthly_spend = "10"
  currency = "USD"
  admin_email = "admin@example.com"
}

resource "aws_budgets_budget" "max_monthly_spend" {
  name = "Max Monthly AWS Spend"
  budget_type  = "COST"
  limit_amount = local.max_monthly_spend
  limit_unit   = local.currency
  time_unit = "MONTHLY"
  time_period_start = "2021-05-31_00:00"

  notification {
    comparison_operator = "GREATER_THAN"
    threshold = "100"
    threshold_type = "PERCENTAGE"
    notification_type = "FORECASTED"
    subscriber_email_addresses = [local.admin_email]
  }

  notification {
    comparison_operator = "GREATER_THAN"
    threshold = "100"
    threshold_type = "PERCENTAGE"
    notification_type = "ACTUAL"
    subscriber_email_addresses = [local.admin_email]
  }
}

terraform {
  required_version = "~> 0.15.4"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.42.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}