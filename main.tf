module "zones" {
  source  = "terraform-aws-modules/route53/aws//modules/zones"
  version = "~> 2.0"

  zones = {
    (var.domain) = {
      comment = "Logistic domain zone"
      tags = {
        type = "public"
      }
    }
  }
}
