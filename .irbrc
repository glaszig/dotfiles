# Some default enhancements/settings for IRB, based on
# http://wiki.rubygarden.org/Ruby/page/show/Irb/TipsAndTricks

unless defined? ETC_IRBRC_LOADED

  # Require RubyGems by default.
  require 'rubygems'
  
  # Activate auto-completion.
  require 'irb/completion'

  begin
    require 'wirble'
    Wirble.init
    Wirble.colorize
  rescue LoadError
    puts "Could not load wirble"
  end
  
  # Use the simple prompt if possible.
  #IRB.conf[:PROMPT_MODE] = :SIMPLE if IRB.conf[:PROMPT_MODE] == :DEFAULT
  IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"
  IRB.conf[:SAVE_HISTORY] = 1000
  IRB.conf[:EVAL_HISTORY] = 200

  ETC_IRBRC_LOADED=true
end
