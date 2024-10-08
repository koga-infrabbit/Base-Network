variables "name" {
  type = "string" 
  default = "cloudwatch metric alarm"
  description = "cloudwatch metric alarm name"
}

variable "comparison_operator" {
  type = "string"
  default = "GreaterThanOrEqualToThreshold"
  description = "cloudwatch metric alarm comparison_operator"
}

variable "evaluation_periods" {
  type = "number"
  default = 1
  description = "cloudwatch metric alarm evaluation_periods"
}

variable "metric_name" {
  type = "string"
  default = "CPUUtilization"
  description = "cloudwatch metric alarm metric_name"
}

variable "namespace" {
  type = "string"
  default = "AWS/EC2"
  description = "cloudwatch metric alarm namespace"
}

variable "period" {
  type = "number"
  default = 60
  description = "cloudwatch metric alarm period"
}

variable "statistic" {
  type = "string"
  default = "Average"
  description = "cloudwatch metric alarm statistics"
}

variable "threshold" {
  type = "number"
  default = 1
  description = "cloudwatch metric alarm threshold"
}

variable "notification_arn" {
  type = "string"
  description = "cloudwatch metric alarm notification"
}

variable "dimensions" {
  type = "object"
  default = {}
  description = "cloudwatch metric alarm dimensions"
}

variable "unit" {
  type = "string"
  default = "Count"
  description = "cloudwatch metric alarm unit"
}

variable "treat_missing_data" {
  type = "string"
  default = "missing"
  description = "cloudwatch metric alarm treat_missing_data"
  
  # missing      : treat as not found
  # ignore       : treat as ignored data
  # breaching    : treat as exceeding threshold
  # notBreaching : treat as not exceeding the threshold
}

variable "description" {
  type = "string"
  default = ""
  description = "cloudwatch metric alarm description"
}
