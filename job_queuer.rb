require 'active_job'
require 'faktory_worker_ruby'
require './puts_job'

PutsJob.perform_later('A string', 42)

