require_relative "log_parser"


log_parser = LogParser.new(File.open(ARGV[0]))

log_parser.pages_most_views
log_parser.pages_unique_views
