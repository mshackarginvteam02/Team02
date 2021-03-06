variable "tupla_rgname_lc" {
    type = string
}
variable "location" {
    type = string
}


variable name {}
variable sku {
    type = string
}
variable retention_in_days {}
variable tags {
}
variable solutions {
  type        = list(object({ solution_name = string, publisher = string, product = string }))
  default     = []
}