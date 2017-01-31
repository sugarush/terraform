variable "region" {
  default = "us-east-1"
}

variable "deploy" {
  default = "web"
}

data "terraform_remote_state" "napalmbrain-io" {
  backend = "s3"

  config {
    bucket = "${var.identifier}-${var.region}-terraform-state"
    region = "${var.region}"

    key = "zone/napalmbrain.io"
  }
}
