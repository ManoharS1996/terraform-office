##############################################################
# ALB Security Group
##############################################################

resource "aws_security_group" "alb_sg" {

  name = "won-bills-alb-sg"

  description = "Security Group for Application Load Balancer"

  vpc_id = data.aws_vpc.existing.id

  ###########################################################
  # HTTP
  ###########################################################

  ingress {

    description = "HTTP"

    from_port = 80

    to_port = 80

    protocol = "tcp"

    cidr_blocks = ["0.0.0.0/0"]

  }

  ###########################################################
  # HTTPS
  ###########################################################

  ingress {

    description = "HTTPS"

    from_port = 443

    to_port = 443

    protocol = "tcp"

    cidr_blocks = ["0.0.0.0/0"]

  }

  ###########################################################
  # Outbound
  ###########################################################

  egress {

    from_port = 0

    to_port = 0

    protocol = "-1"

    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {

    Name = "won-bills-alb-sg"

  }

}

##############################################################
# Application Load Balancer
##############################################################

resource "aws_lb" "won_bills_alb" {

  name = "won-bills-alb"

  internal = false

  load_balancer_type = "application"

  security_groups = [

    aws_security_group.alb_sg.id

  ]

  subnets = [

    data.aws_subnet.public_subnet_1.id,

    data.aws_subnet.public_subnet_2.id

  ]

  enable_deletion_protection = false

  idle_timeout = 60

  enable_http2 = true

  ip_address_type = "ipv4"

  tags = {

    Name = "won-bills-alb"

    Project = var.project_name

    Environment = var.environment

  }

}