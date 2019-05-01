# Grab the list of availability zones
data "aws_availability_zones" "available" {}

# Create a subnet to launch our instances into
resource "aws_subnet" "default" {
  count                   = "${length(var.cidr_blocks)}"
  vpc_id                  = "${aws_vpc.default.id}"
  availability_zone       = "${data.aws_availability_zones.available.names[count.index]}"
  cidr_block              = "${var.cidr_blocks[count.index]}"
  map_public_ip_on_launch = true

  tags {
    "Name" = "${var.namespace}"
  }
}
