# frozen_string_literal: true

class Processor
  include Sneakers::Worker
  from_queue :logs

  def work_with_params(raw_message, _delivery_info, _metadata)
    raise 'whatever'
    ack!
  rescue RuntimeError => e
    # re-raise for whatever reasons
    raise(e)
  end
end
