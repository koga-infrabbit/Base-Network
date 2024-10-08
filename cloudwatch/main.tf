resource "aws_cloudwatch_metric_alarm" "this" {
  alarm_name                = var.name
  comparison_operator       = local.comparison_dict[lower(var.comparison_operator)]
  evaluation_periods        = var.evaluation_periods
  metric_name               = var.metric_name
  namespace                 = var.namespace
  period                    = var.period
  statistic                 = local.statistic_dict[lower(var.statistic)]
  threshold                 = var.threshold
  alarm_description         = local.description
  insufficient_data_actions = []
  alarm_actions             = [ var.notification_arn ]
  ok_actions                = [ var.notification_arn ]
  treat_missing_data        = var.treat_missing_data
  unit                      = var.unit
  dimensions                = var.dimensions
}
