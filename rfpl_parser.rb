require 'open-uri'
require 'nokogiri'
require 'net/http'
require 'uri'
require 'json'

class RfplParser

  TABLE_URL = 'https://premierliga.ru/ajax/tournament-table/'
	

  def self.get_data(season_id = 696)
    # 2012/2013 = 648
    # 2013/2014 = 654
    # 2014/2015 = 675
    # 2014/2015 = 680  
    # 2014/2015 = 685      
    begin
        uri = URI.parse(TABLE_URL)
        res = Net::HTTP.post_form(uri, { ajaxAction: 'getYearStats-tournament-table', :season => season_id })
        parsed = JSON.parse(res.body)
        doc = Nokogiri::HTML(parsed['contents'])
        rows = doc.search('//tr[starts-with(@class, "s")]')
        details = rows.collect do |row|
          detail = {}
          [
              [:name, 'td[2]/p/a/text()'],
              [:games, 'td[4]/p/text()'],
              [:wins, 'td[5]/p/text()'],
              [:draws, 'td[6]/p/text()'],
              [:losts, 'td[7]/p/text()'],
              [:balls_scored, 'td[8]/p/span[1]/text()'],
              [:balls_missed, 'td[8]/p/span[2]/text()'],
              [:points, 'td[9]/p/text()']
          ].each do |name, xpath|
            detail[name] = row.at_xpath(xpath).to_s.strip
          end
          detail
        end
        details
    rescue
      []
    end
  end
end

