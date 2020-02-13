output "application_queue_url" {
  description = "The URL for the created Amazon SQS queue for application"
  value = module.application_queue.this_sqs_queue_id
}

output "application_dlq_url" {
  description = "The URL for the created Amazon SQS dead leatter queue"
  value = module.application_dlq.this_sqs_queue_id
}