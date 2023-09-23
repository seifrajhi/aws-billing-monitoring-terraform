provider "aws" {
  region = "us-east-1" # AWS Billing metric is only available in us-east-1
}

module "billing_alerts" {
  source = "./modules/billing_alerts"
  
  billing_alarms = {
    "estimated-charges-100" : {
      threshold = 100,
      description = "Alarm when AWS charges go above $100",
    },
    "estimated-charges-120" : {
      threshold = 150,
      description = "Alarm when AWS charges go above $150",
    },
  }
}
