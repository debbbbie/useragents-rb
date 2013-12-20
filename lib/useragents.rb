require 'core_ext/blank'

module UserAgents

  class << self

    def list
      @@list
    end

    def rand
      @@list[ Kernel::rand(@@list.length) ]
    end

    def init()
      @@list = File.read(File.expand_path("../useragents.txt", __FILE__)).split("\n")
    end

  end

end

UserAgents.init()