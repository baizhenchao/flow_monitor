home = File.join(File.dirname(__FILE__),'..')
$LOAD_PATH.unshift(File.join(home,'lib'))

require 'flow_monitor'

config = YAML.load_file File.join(home,"config/flow_monitor.yml")
