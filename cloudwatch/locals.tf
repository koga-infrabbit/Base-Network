locals {
  comparison_dict = {
    "greaterthanorequaltothreshold" = "GreaterThanOrEqualToThreshold",
    "greaterthanthreshold" = "GreaterThanThreshold",
    "lessthanthreshold" = "LessThanThreshold",
    "lessthanorequaltothreshold" = "LessThanOrEqualToThreshold",
    "lessthanlowerorgreaterthanupperthreshold" = "LessThanLowerOrGreaterThanUpperThreshold",
    "lessthanlowerthreshold" = "LessThanLowerThreshold",
    "greaterthanupperthreshold" = "GreaterThanUpperThreshold",
    ">=" = "GreaterThanOrEqualToThreshold",
    "=>" = "GreaterThanOrEqualToThreshold",
    ">" = "GreaterThanThreshold",
    "<" = "LessThanThreshold",
    "<=" = "LessThanOrEqualToThreshold",
    "=<" = "LessThanOrEqualToThreshold"
    }
}

local {
  statistic_dict = {
    "average" = "Average",
    "avg" = "Average",
    "samplecount" = "SampleCount",
    "count" = "SampleCount",
    "sample" = "SampleCount",
    "sum" = "Sum",
    "minimum" = "Minimum",
    "min" = "Minimum",
    "maximum" = "Maximum",
    "max" = "Maximum"
  }
}

locals {
  description = var.description == "" ? format("%s(%s) alarm. Operator : %s , threshold : %d", var.metric_name, var.namespace , local.comparison_dict[lower(var.comparison_operator)] , var.threshold ) : var.description
}

