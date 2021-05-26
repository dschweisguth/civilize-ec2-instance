require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

if defined? Rails
  logger = Logger.new(STDOUT)
  Rails.logger = logger
  ActiveRecord::Base.logger = logger
  ActionController::Base.logger = logger
end
