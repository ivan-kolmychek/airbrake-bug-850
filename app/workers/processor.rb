# frozen_string_literal: true

class Processor
  include Sneakers::Worker
  from_queue :logs

  def work(_whatever)
    raise 'whatever'
    ack!
  end
end
