provider "local" {}
resource "local_file" "foo" {
  content  = "Hello World"
  filename = "/tmp/foo.bar"
}


# Normal Variable
variable "x" {
  default = 20
}



# Print variable on output
output "x" {
  value = var.x
}

#If our value is just a variable then var.x, if it is the combination of strings then "${var.x}"
output "x1" {
  value = "value of x - ${var.x}"
}