variable "cloudwatch_metric_streams" {
  description = <<EOT
Map of cloudwatch_metric_streams, attributes below
Required:
    - firehose_arn
    - output_format
    - role_arn
Optional:
    - include_linked_accounts_metrics
    - name
    - name_prefix
    - region
    - tags
    - tags_all
    - exclude_filter (block):
        - metric_names (optional)
        - namespace (required)
    - include_filter (block):
        - metric_names (optional)
        - namespace (required)
    - statistics_configuration (block):
        - additional_statistics (required)
        - include_metric (required, block):
            - metric_name (required)
            - namespace (required)
EOT

  type = map(object({
    firehose_arn                    = string
    output_format                   = string
    role_arn                        = string
    include_linked_accounts_metrics = optional(bool)
    name                            = optional(string)
    name_prefix                     = optional(string)
    region                          = optional(string)
    tags                            = optional(map(string))
    tags_all                        = optional(map(string))
    exclude_filter = optional(list(object({
      metric_names = optional(set(string))
      namespace    = string
    })))
    include_filter = optional(list(object({
      metric_names = optional(set(string))
      namespace    = string
    })))
    statistics_configuration = optional(list(object({
      additional_statistics = set(string)
      include_metric = list(object({
        metric_name = string
        namespace   = string
      }))
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloudwatch_metric_streams : (
        v.statistics_configuration == null || alltrue([for item in v.statistics_configuration : (length(item.include_metric) >= 1)])
      )
    ])
    error_message = "Each include_metric list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudwatch_metric_streams : (
        v.exclude_filter == null || alltrue([for item in v.exclude_filter : (item.metric_names == null || (alltrue([for x in item.metric_names : length(x) >= 1 && length(x) <= 255])))])
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudwatch_metric_streams : (
        v.include_filter == null || alltrue([for item in v.include_filter : (item.metric_names == null || (alltrue([for x in item.metric_names : length(x) >= 1 && length(x) <= 255])))])
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  # Note: 10 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

