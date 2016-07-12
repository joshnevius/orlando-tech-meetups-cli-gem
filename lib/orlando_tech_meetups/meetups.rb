class OrlandoTechMeetups::Meetups
  attr_accessor :name, :next_meetups, :url

  def self.all
    self.list_meetups
  end

  def self.list_meetups
    meetup = []
    meetup << self.scraper("http://meetup.com/orlando-tech/")
    meetup << self.scraper("http://www.meetup.com/Code-For-Orlando/")
    meetup << self.scraper("http://www.meetup.com/The-Iron-Yard-Orlando/")
    meetup << self.scraper("http://www.meetup.com/Front-End-Orlando/")
    meetup << self.scraper("http://www.meetup.com/Downtown-UX-Meetup/")
    meetup << self.scraper("http://www.meetup.com/Orlando-Ruby/")
    meetup << self.scraper("http://www.meetup.com/OrlandoJS/")
    meetup << self.scraper("http://www.meetup.com/orlandodojo/")
    meetup << self.scraper("http://www.meetup.com/Central-Florida-RPi-Users-Group/")
    meetup << self.scraper("http://www.meetup.com/iot-orlando/")
    meetup 
  end

end
