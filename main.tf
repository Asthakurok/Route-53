resource "aws_route53_record" "skillnet" {
  zone_id = "service-discovery-hosted-zone-id"
  name    = "skillnet.example.com"
  type    = "A"

  alias {
    name                   = "${var.name}"
    zone_id                = "${var.zone_id}"
    evaluate_target_health = true
  }
}
