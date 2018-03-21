require 'active_job'
require 'faktory_worker_ruby'
require 'active_job/queue_adapters/faktory_adapter'

ActiveJob::Base.queue_adapter = :faktory

class PutsJob < ActiveJob::Base
  def perform(*args)
    puts 'PutsJob active job!! ' * 300
    puts args
    puts "----------"
    args.each do |arg|
      puts "#{arg} : #{arg.class.name}"
    end
  end
end
