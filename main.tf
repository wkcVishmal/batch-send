# test
resource "aws_route53_record" "test" {
  zone_id = "test"
  name    = "test101.abc.com"
  type    = "A"

  alias {
    name                   = "abcsds.com"
    zone_id                = "aws_lb.redirector.zone_id"
    evaluate_target_health = false
  }
}

# test
resource "aws_route53_record" "test2" {
  zone_id = "test2"
  name    = "test101.abc.com"
  type    = "A"

  alias {
    name                   = "abcsds.com"
    zone_id                = "aws_lb.redirector.zone_id"
    evaluate_target_health = false
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket = "test"
  tags = var.tags
}

resource "aws_ssm_parameter" "test_ssm" {
  name        = "test/test1"
  description = "test"
  type        = "SecureString"
  value       = "test"
}
