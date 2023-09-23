# Create billing alarms using a for_each loop
resource "aws_cloudwatch_metric_alarm" "billing_alarms" {
  for_each = var.billing_alarms

  alarm_name          = each.key
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "EstimatedCharges"
  namespace           = "AWS/Billing"
  period              = 86400 # 24 hours in seconds
  statistic           = "Maximum"
  threshold           = each.value.threshold
  alarm_description   = each.value.description
  alarm_actions       = [aws_sns_topic.billing_alert.arn]
  treat_missing_data  = "notBreaching"
  dimensions = {
    Currency = "USD"
  }
}
