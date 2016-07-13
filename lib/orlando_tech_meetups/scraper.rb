 class OrlandoTechMeetups::Scraper

  def scraper(meetup_url)
    doc = Nokogiri::HTML(open(meetup_url))
    doc.css('html').each do |doc|
      new_meetup = OrlandoTechMeetups::Meetups.new
      new_meetup.name = doc.css("h1 span").text
      new_meetup.next_meetup = doc.search("div li time span").first.text.strip
      new_meetup.url = doc.css('div a').map { |link| link['href'] }.first
      new_meetup.save
    end
  end

end
