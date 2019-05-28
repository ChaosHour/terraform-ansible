//
// EC2 - provider.tf
//

provider "aws" {
  region  = "${var.region}"
  version = "~> 2.7"

  //profile    = "${var.aws-profile}"
}
