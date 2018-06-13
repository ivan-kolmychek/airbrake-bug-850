class Processor
  include Sneakers::Worker
  from_queue :logs


  def work(msg)
    Airbrake.notify(msg)
    1/0
    ack!
  end
end
