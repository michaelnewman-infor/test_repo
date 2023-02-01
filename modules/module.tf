# Simulate creating a resource which takes a minute.
resource "time_sleep" "wait_120_seconds" {
  create_duration = "120s"
}

resource "null_resource" "next" {
  depends_on = [time_sleep.wait_120_seconds]
}

output "a" {
  value     = "first_value"
  sensitive = true
}

output "b" {
  value     = "second_value"
  sensitive = false
}

output "c" {
  value     = "third_value"
  sensitive = true
}

output "d" {
  value     = "fourth_value"
  sensitive = false
}

output "e" {
  value     = "fifth_value"
  sensitive = false
}

output "f" {
  value     = "sixth_value"
  sensitive = true
}
