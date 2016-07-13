class OrlandoTechMeetups::Meetups
  attr_accessor :name, :next_meetup, :url
  
   @@all = []

  def self.all
    self.scrape_meetups if @@all == [] 
    @@all
  end

  def save 
    @@all << self 
  end

  MEETUP_URL = [
    "http://www.meetup.com/Code-For-Orlando/",
    "http://meetup.com/orlando-tech/",
    "http://www.meetup.com/The-Iron-Yard-Orlando/",
    "http://www.meetup.com/Front-End-Orlando/",
    "http://www.meetup.com/Downtown-UX-Meetup/",
    "http://www.meetup.com/Orlando-Ruby/",
    "http://www.meetup.com/OrlandoJS/",
    "http://www.meetup.com/orlandodojo/",
    "http://www.meetup.com/Central-Florida-RPi-Users-Group/",
    "http://www.meetup.com/iot-orlando/"
  ]

  def self.scrape_meetups
    s = OrlandoTechMeetups::Scraper.new
    MEETUP_URL.each do |url|
      print "."
      s.scraper(url) 
    end
    puts "\n"
  end     
end