module UserAgents

  SELECTORS = [
    '[description="Browsers - Windows"] > useragent',
    '[description="Browsers - Mac"]     > useragent',
    '[description="Browsers - Linux"]   > useragent',
    '[description="Mobile Devices"]     > [description="Browsers"] > useragent',
  ]

  def self.fetch selectors = SELECTORS
    require 'nokogiri'
    require 'open-uri'

    url    = 'http://techpatterns.com/downloads/firefox/useragentswitcher.xml'
    doc    = Nokogiri::XML open url
    agents = selectors.flat_map do |selector|
      doc.css(selector).map{ |u| u.attr 'useragent' }
    end

    File.write FILE, agents.join("\n")

    puts "Fetch complete, saved #{agents.size} useragents"
  end
end
