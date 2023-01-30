# Simulate creating a resource which takes a minute.
resource "time_sleep" "wait_60_seconds" {
  create_duration = "60s"
}

resource "null_resource" "next" {
  depends_on = [time_sleep.wait_60_seconds]
}

output "first" {
  value     = "first_value"
  sensitive = true
}

output "second" {
  value     = "second_value"
  sensitive = false
}

output "third" {
  value     = "third_value"
  sensitive = true
}

output "fourth" {
  value     = "fourth_value"
  sensitive = false
}
