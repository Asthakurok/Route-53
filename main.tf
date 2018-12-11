resource "aws_route53_record" "skillnet" {
  zone_id = "/hostedzone/Z13DF8DT9AJFGQ"
  name    = "skillnet.example.com"
  type    = "A"

  alias {
    name                   = "${var.name}"
    zone_id                = "${var.zone_id}"
    evaluate_target_health = true
  }
}
