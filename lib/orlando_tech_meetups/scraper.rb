class OrlandoTechMeetups::Scraper

  def scraper(meetup_url)
    doc = Nokogiri::HTML(open(meetup_url))
    meetup = []
    doc.css('html').each do |doc|
      meetup_hash = {
      :name => doc.css("h1 span").text,
      :next_meetup => doc.search("div li time span").first.text.strip,
      :url => doc.css('div a').map { |link| link['href'] }.first
      }
      meetup << meetup_hash
    end
    meetup
  end

end