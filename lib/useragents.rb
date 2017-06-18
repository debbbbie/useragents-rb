require 'zlib'
require_relative 'useragents/fetch'

module UserAgents

  FILE = File.expand_path '../useragents.txt', __FILE__

  class << self

    def list
      @@list ||= File.readlines FILE
    end

    def rand
      list.sample
    end

  end

end

