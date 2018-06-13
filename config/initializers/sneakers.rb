require 'sneakers/metrics/logging_metrics'

require 'airbrake/sneakers'

Sneakers.configure(
  amqp: ENV.fetch('AMQP_CONNECTION_STRING', 'amqp://localhost'),
  metrics: Sneakers::Metrics::LoggingMetrics.new,
)
