output "cloudwatch_metric_streams_id" {
  description = "Map of id values across all cloudwatch_metric_streams, keyed the same as var.cloudwatch_metric_streams"
  value       = { for k, v in aws_cloudwatch_metric_stream.cloudwatch_metric_streams : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudwatch_metric_streams_arn" {
  description = "Map of arn values across all cloudwatch_metric_streams, keyed the same as var.cloudwatch_metric_streams"
  value       = { for k, v in aws_cloudwatch_metric_stream.cloudwatch_metric_streams : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "cloudwatch_metric_streams_creation_date" {
  description = "Map of creation_date values across all cloudwatch_metric_streams, keyed the same as var.cloudwatch_metric_streams"
  value       = { for k, v in aws_cloudwatch_metric_stream.cloudwatch_metric_streams : k => v.creation_date if v.creation_date != null && length(v.creation_date) > 0 }
}
output "cloudwatch_metric_streams_exclude_filter" {
  description = "Map of exclude_filter values across all cloudwatch_metric_streams, keyed the same as var.cloudwatch_metric_streams"
  value       = { for k, v in aws_cloudwatch_metric_stream.cloudwatch_metric_streams : k => v.exclude_filter if v.exclude_filter != null && length(v.exclude_filter) > 0 }
}
output "cloudwatch_metric_streams_firehose_arn" {
  description = "Map of firehose_arn values across all cloudwatch_metric_streams, keyed the same as var.cloudwatch_metric_streams"
  value       = { for k, v in aws_cloudwatch_metric_stream.cloudwatch_metric_streams : k => v.firehose_arn if v.firehose_arn != null && length(v.firehose_arn) > 0 }
}
output "cloudwatch_metric_streams_include_filter" {
  description = "Map of include_filter values across all cloudwatch_metric_streams, keyed the same as var.cloudwatch_metric_streams"
  value       = { for k, v in aws_cloudwatch_metric_stream.cloudwatch_metric_streams : k => v.include_filter if v.include_filter != null && length(v.include_filter) > 0 }
}
output "cloudwatch_metric_streams_include_linked_accounts_metrics" {
  description = "Map of include_linked_accounts_metrics values across all cloudwatch_metric_streams, keyed the same as var.cloudwatch_metric_streams"
  value       = { for k, v in aws_cloudwatch_metric_stream.cloudwatch_metric_streams : k => v.include_linked_accounts_metrics if v.include_linked_accounts_metrics != null }
}
output "cloudwatch_metric_streams_last_update_date" {
  description = "Map of last_update_date values across all cloudwatch_metric_streams, keyed the same as var.cloudwatch_metric_streams"
  value       = { for k, v in aws_cloudwatch_metric_stream.cloudwatch_metric_streams : k => v.last_update_date if v.last_update_date != null && length(v.last_update_date) > 0 }
}
output "cloudwatch_metric_streams_name" {
  description = "Map of name values across all cloudwatch_metric_streams, keyed the same as var.cloudwatch_metric_streams"
  value       = { for k, v in aws_cloudwatch_metric_stream.cloudwatch_metric_streams : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloudwatch_metric_streams_name_prefix" {
  description = "Map of name_prefix values across all cloudwatch_metric_streams, keyed the same as var.cloudwatch_metric_streams"
  value       = { for k, v in aws_cloudwatch_metric_stream.cloudwatch_metric_streams : k => v.name_prefix if v.name_prefix != null && length(v.name_prefix) > 0 }
}
output "cloudwatch_metric_streams_output_format" {
  description = "Map of output_format values across all cloudwatch_metric_streams, keyed the same as var.cloudwatch_metric_streams"
  value       = { for k, v in aws_cloudwatch_metric_stream.cloudwatch_metric_streams : k => v.output_format if v.output_format != null && length(v.output_format) > 0 }
}
output "cloudwatch_metric_streams_region" {
  description = "Map of region values across all cloudwatch_metric_streams, keyed the same as var.cloudwatch_metric_streams"
  value       = { for k, v in aws_cloudwatch_metric_stream.cloudwatch_metric_streams : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloudwatch_metric_streams_role_arn" {
  description = "Map of role_arn values across all cloudwatch_metric_streams, keyed the same as var.cloudwatch_metric_streams"
  value       = { for k, v in aws_cloudwatch_metric_stream.cloudwatch_metric_streams : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}
output "cloudwatch_metric_streams_state" {
  description = "Map of state values across all cloudwatch_metric_streams, keyed the same as var.cloudwatch_metric_streams"
  value       = { for k, v in aws_cloudwatch_metric_stream.cloudwatch_metric_streams : k => v.state if v.state != null && length(v.state) > 0 }
}
output "cloudwatch_metric_streams_statistics_configuration" {
  description = "Map of statistics_configuration values across all cloudwatch_metric_streams, keyed the same as var.cloudwatch_metric_streams"
  value       = { for k, v in aws_cloudwatch_metric_stream.cloudwatch_metric_streams : k => v.statistics_configuration if v.statistics_configuration != null && length(v.statistics_configuration) > 0 }
}
output "cloudwatch_metric_streams_tags" {
  description = "Map of tags values across all cloudwatch_metric_streams, keyed the same as var.cloudwatch_metric_streams"
  value       = { for k, v in aws_cloudwatch_metric_stream.cloudwatch_metric_streams : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "cloudwatch_metric_streams_tags_all" {
  description = "Map of tags_all values across all cloudwatch_metric_streams, keyed the same as var.cloudwatch_metric_streams"
  value       = { for k, v in aws_cloudwatch_metric_stream.cloudwatch_metric_streams : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

