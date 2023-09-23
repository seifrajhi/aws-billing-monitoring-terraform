# Create AWS SNS Topic
resource "aws_sns_topic" "billing_alert" {
  name = "billing-alert"
}

# Add your email subscription to the SNS topic.
resource "aws_sns_topic_subscription" "email_alert" {
  topic_arn = aws_sns_topic.billing_alert.arn
  protocol  = "email"
  endpoint  = "your-email@example.com" # Replace with your email
}
