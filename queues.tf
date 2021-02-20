module "application_queue" {
  source  = "terraform-aws-modules/sqs/aws"
  version = "2.1.0"
  name    = var.application

  tags = {
    Service     = var.application
    QueueType   = "application"
    Environment = var.environment
  }
}

module "application_dlq" {
  source  = "terraform-aws-modules/sqs/aws"
  version = "2.1.0"
  name    = "${var.application}-dlq"

  tags = {
    Service     = var.application
    QueueType   = "dead-letter"
    Environment = var.environment
  }
}