require 'sneakers/metrics/logging_metrics'
require 'airbrake/sneakers'
Sneakers.configure(
  metrics: Sneakers::Metrics::LoggingMetrics.new
)
