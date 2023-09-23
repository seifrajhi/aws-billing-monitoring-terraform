variable "billing_alarms" {
  description = "A map of billing alarms with their thresholds and descriptions."
  type        = map(object({
    threshold   = number
    description = string
  }))
}
