require File.expand_path('../core_ext/blank', __FILE__)
require 'zlib'

module UserAgents

  class << self

    def list
      @@list
    end

    def rand
      @@list[ Kernel::rand(@@list.length) ]
    end

    def init()
      Zlib::GzipReader.open(File.expand_path("../useragents.dat", __FILE__)) {|gz|
        @@list = gz.read.split("\n")
      }
    end

  end

end

UserAgents.init()