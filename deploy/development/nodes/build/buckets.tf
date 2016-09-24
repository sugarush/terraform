resource "aws_s3_bucket" "local" {
    bucket = "${var.region}-${var.deploy}-archlinux-repository"
    acl = "private"
}