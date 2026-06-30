##############################################################
# Web Security Group
##############################################################

resource "aws_security_group" "web_sg" {

  name        = "won-bills-web-sg"
  description = "Web Security Group"
  vpc_id      = var.vpc_id

  ingress {

    description = "SSH"

    from_port = 22

    to_port = 22

    protocol = "tcp"

    cidr_blocks = ["0.0.0.0/0"]

  }

  ingress {

    description = "HTTP"

    from_port = 80

    to_port = 80

    protocol = "tcp"

    cidr_blocks = ["0.0.0.0/0"]

  }

  ingress {

    description = "HTTPS"

    from_port = 443

    to_port = 443

    protocol = "tcp"

    cidr_blocks = ["0.0.0.0/0"]

  }

  egress {

    from_port = 0

    to_port = 0

    protocol = "-1"

    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {

    Name = "won-bills-web-sg"

    Project = var.project_name

    Application = var.application_name

    Environment = var.environment

    Owner = var.owner

  }

}

##############################################################
# Application Security Group
##############################################################

resource "aws_security_group" "app_sg" {

  name = "won-bills-app-sg"

  description = "Application Security Group"

  vpc_id = var.vpc_id

  ingress {

    description = "NodeJS"

    from_port = 3000

    to_port = 3000

    protocol = "tcp"

    security_groups = [

      aws_security_group.web_sg.id

    ]

  }

  ingress {

    description = "Spring Boot"

    from_port = 8080

    to_port = 8080

    protocol = "tcp"

    security_groups = [

      aws_security_group.web_sg.id

    ]

  }

  ingress {

    description = "Custom Application"

    from_port = 5000

    to_port = 5000

    protocol = "tcp"

    security_groups = [

      aws_security_group.web_sg.id

    ]

  }

  egress {

    from_port = 0

    to_port = 0

    protocol = "-1"

    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {

    Name = "won-bills-app-sg"

    Project = var.project_name

    Application = var.application_name

    Environment = var.environment

    Owner = var.owner

  }

}

##############################################################
# Database Security Group
##############################################################

resource "aws_security_group" "db_sg" {

  name = "won-bills-db-sg"

  description = "Database Security Group"

  vpc_id = var.vpc_id

  ingress {

    description = "MySQL"

    from_port = 3306

    to_port = 3306

    protocol = "tcp"

    security_groups = [

      aws_security_group.app_sg.id

    ]

  }

  ingress {

    description = "PostgreSQL"

    from_port = 5432

    to_port = 5432

    protocol = "tcp"

    security_groups = [

      aws_security_group.app_sg.id

    ]

  }

  ingress {

    description = "MongoDB"

    from_port = 27017

    to_port = 27017

    protocol = "tcp"

    security_groups = [

      aws_security_group.app_sg.id

    ]

  }

  ingress {

    description = "Redis"

    from_port = 6379

    to_port = 6379

    protocol = "tcp"

    security_groups = [

      aws_security_group.app_sg.id

    ]

  }

  egress {

    from_port = 0

    to_port = 0

    protocol = "-1"

    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {

    Name = "won-bills-db-sg"

    Project = var.project_name

    Application = var.application_name

    Environment = var.environment

    Owner = var.owner

  }

}