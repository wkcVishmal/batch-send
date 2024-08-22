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
