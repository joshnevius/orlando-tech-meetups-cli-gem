class OrlandoTechMeetups::Meetups
  attr_accessor :name, :about, :next_meetup, :url

  def self.all
    self.meetup_scraper
    #puts <<-DOC
    #1. Orlando Tech
    #2. Orlando Developers Meetup
    #3. Code For Orlando
    #4. The Iron Yard - Orlando
    #5. Front End Orlando
    #6. Downtown UX Meetup
    #7. The Orlando Python User Group
    #8. Orlando MongoDB Group
    #9. Orlando Ruby Users Group
    #10. Orlando PHP Users Group
    #11. Central Florida Android Developers Group
    #12. OrlandoJS
    #13. Orlando Coding Dojo
    #14. Central Florida Raspberry Pi Users Group
    #15. Orlando iOS Developer Group
    #16. Internet of Things (IoT) Orlando
    #DOC
  end

  def self.meetup_scraper
    meetups = []
    meetups << self.orlando_tech
    meetups << self.orlando_developers_meetup
    meetups << self.code_for_orlando
    meetups << self.iron_yard
    meetups << self.front_end_orlando
    meetups << self.downtown_ux
    meetups << self.orlando_python_group
    meetups << self.orlando_mongodb_group
    meetups << self.orlando_ruby_group
    meetups << self.orlando_php_group
    meetups << self.central_florida_android_group
    meetups << self.orlandojs
    meetups << self.orlando_coding_dojo
    meetups << self.raspberry_pi_group
    meetups << self.orlando_ios_dev_group
    meetups << self.iot_orlando
    meetups
  end

  def self.orlando_tech
    doc = Nokogiri::HTML(open('http://www.meetup.com/Orlando-Tech/'))
    meetup = self.new
    meetup.name = doc.search("h1 span").text
    meetup.about = <<-DOC
    Orlando Tech is a community-built organization that connects, promotes and fosters the growth of technology companies in Orlando. We host the monthly Orlando Tech Meetup, a platform for technologists, entrepreneurs, and companies to share their products. Since our founding in 2011, OTM has grown to over 2100 members and monthly attendance exceeding 200+. Though we like to highlight homegrown Orlando-based companies and entrepreneurs, our members come from all over Florida. Come check out Orlando!
    DOC
    meetup.next_meetup = doc.search("div li time span").first.text.strip
    meetup.url = "http://www.meetup.com/Orlando-Tech/"
    meetup
  end

  def self.orlando_developers_meetup
    doc = Nokogiri::HTML(open('http://www.meetup.com/OrlandoDevs/'))
    meetup = self.new
    meetup.name = doc.search("h1 span").text
    meetup.about = <<-DOC
    The Orlando Developers User Group is for developers of all skill levels in the Orlando area to come learn about improving yourself as a developer. We focus primarily on professional development and soft skills, but we will also be featuring technical talks and presentations on various different subjects that our community is interested in.
    DOC
    meetup.next_meetup = doc.search("ul script h2").text.strip
    meetup.url = "http://www.meetup.com/OrlandoDevs/"
    meetup 
  end

  def self.code_for_orlando
    doc = Nokogiri::HTML(open('http://www.meetup.com/Code-For-Orlando/'))
    meetup = self.new
    meetup.name = doc.search("h1 span").text
    meetup.about = <<-DOC
    Want To Help Your City? Good, we could use your help. We are working to become an official Code for America Brigade, which means we're volunteers that contribute our talents toward improving the way our local governments and community organizations use the web. Brigade is about action and you're here because you are someone who takes action. See what kind of things brigades do, or watch the inspirational TED talk given by Jennifer Pahlka, the founder of Code for America.    
    DOC
    meetup.next_meetup = doc.search("div li time span").first.text.strip
    meetup.url = "http://www.meetup.com/Code-For-Orlando/"
    meetup 
  end

  def self.iron_yard
    doc = Nokogiri::HTML(open('http://www.meetup.com/The-Iron-Yard-Orlando/'))
    meetup = self.new
    meetup.name = doc.search("h1 span").text
    meetup.about = <<-DOC
    The Iron Yard exists to create exceptional growth and mentorship for people and their ideas through tech-focused education. We're passionate about the communities we exist in and strive to be good citizens of the tech industry. Our doors are open to everyone who wants to learn about technology, from kids to people who want to change careers. Come to one of our events to see what all of the excitement is about.
    DOC
    meetup.next_meetup = doc.search("div li time span").first.text.strip
    meetup.url = "http://www.meetup.com/The-Iron-Yard-Orlando/"
    meetup
  end

  def self.front_end_orlando
    doc = Nokogiri::HTML(open('http://www.meetup.com/Front-End-Orlando/'))
    meetup = self.new
    meetup.name = doc.search("h1 span").text
    meetup.about = <<-DOC
    This group is for Orlando Front End Developers who work with HTML/CSS/Javascript regularly. Newbies are welcome too! We're all here to learn :)
    DOC
    meetup.next_meetup = doc.search("ul script h2").text.strip
    meetup.url = "http://www.meetup.com/Front-End-Orlando/"
    meetup 
  end

  def self.downtown_ux
    doc = Nokogiri::HTML(open('http://www.meetup.com/Downtown-UX-Meetup/'))
    meetup = self.new
    meetup.name = doc.search("h1 span").text
    meetup.about = <<-DOC
    Our mission is to create opportunities for anyone to learn, discuss, and share knowledge about the field of User Experience. We try to create opportunities for our community to learn about tools and techniques for UX Design from each other. Typically our meetups have a presentation paired with a workshop so that we can both learn and then do. We hope you will join us.
    DOC
    meetup.next_meetup = doc.search("div li time span").first.text.strip
    meetup.url = "http://www.meetup.com/Downtown-UX-Meetup/"
    meetup 
  end

  def self.orlando_python_group
    doc = Nokogiri::HTML(open('http://www.meetup.com/OrlandoPython/'))
    meetup = self.new
    meetup.name = doc.search("h1 span").text
    meetup.about = <<-DOC
    The OrlandoPy(thon) User Group is for users, enthusiasts, and students in Orlando, Florida, interested in the Python computer programming language. We meet monthly to discuss and present emerging issues and interesting projects in Python, practice our skill, and trade stories from the workforce. All skill levels are welcome.
    DOC
    meetup.next_meetup = doc.search("ul script h2").text.strip
    meetup.url = "http://www.meetup.com/OrlandoPython/"
    meetup 
  end

  def self.orlando_mongodb_group
    doc = Nokogiri::HTML(open('http://www.meetup.com/Orlando-MongoDB-User-Group/'))
    meetup = self.new
    meetup.name = doc.search("h1 span").text
    meetup.about = <<-DOC
    This group is a place for developers, systems admins, and tech enthusiasts to learn more about the open source, document-oriented database MongoDB. MongoDB is the leading NoSQL database and many organizations are adopting this technology. If you are facing challenges with MySQL or Postgres or Oracle and want to explore a more flexible, scalable alternative, please join us at one of our sessions.  
    DOC
    meetup.next_meetup = doc.search("div li time span").first.text.strip
    meetup.url = "http://www.meetup.com/Orlando-MongoDB-User-Group/"
    meetup 
  end

  def self.orlando_ruby_group
    doc = Nokogiri::HTML(open('http://www.meetup.com/Orlando-Ruby/'))
    meetup = self.new
    meetup.name = doc.search("h1 span").text
    meetup.about = <<-DOC
    Dedicated to educate about the Ruby language, and associated technologies. We typically meet on the second Thursday of the month providing a presentation and networking.
    DOC
    meetup.next_meetup = doc.search("div li time span").first.text.strip
    meetup.url = "http://www.meetup.com/Orlando-Ruby/"
    meetup 
  end

  def self.orlando_php_group
    doc = Nokogiri::HTML(open('http://www.meetup.com/OrlandoPHP/'))
    meetup = self.new
    meetup.name = doc.search("h1 span").text
    meetup.about = <<-DOC
    The Orlando PHP User Group is for web development professionals looking to discuss and learn about the C-type programming language PHP, which is used in a variety of common web applications. We meet on the first Wednesday of each month to present and discuss projects we're working on and trade stories from the workforce. All skill levels are welcome.
    DOC
    meetup.next_meetup = doc.search("ul script h2").text.strip
    meetup.url = "http://www.meetup.com/OrlandoPHP/"
    meetup 
  end

  def self.central_florida_android_group
    doc = Nokogiri::HTML(open('http://www.meetup.com/Central-Florida-Android-Developers-Group/'))
    meetup = self.new
    meetup.name = doc.search("h1 span").text
    meetup.about = <<-DOC
    A group for developers of all skill levels to network, share information, and learn from each other. We also host the http://www.meetup.com/Orlando-iOS-Developer... at our offices in downtown Orlando ( http:www.justecho.com ) and will regularly meet for group discussions, network or job opportunities, and to share ideas and whatever projects group members are working on. Sorry but due to current membership suggestions, no recruiters or non-tech attendees.    
    DOC
    meetup.next_meetup = doc.search("ul script h2").text.strip
    meetup.url = "http://www.meetup.com/Central-Florida-Android-Developers-Group/"
    meetup 
  end

  def self.orlandojs
    doc = Nokogiri::HTML(open('http://www.meetup.com/OrlandoJS/'))
    meetup = self.new
    meetup.name = doc.search("h1 span").text
    meetup.about = <<-DOC
    The Orlando JavaScript group is a place to talk about all things JavaScript.
    DOC
    meetup.next_meetup = doc.search("ul script h2").text.strip
    meetup.url = "http://www.meetup.com/OrlandoJS/"
    meetup 
  end

  def self.orlando_coding_dojo
    doc = Nokogiri::HTML(open('http://www.meetup.com/orlandodojo/'))
    meetup = self.new
    meetup.name = doc.search("h1 span").text
    meetup.about = <<-DOC
    The Orlando Coding Dojo is the dedicated group for practicing the craft of test-driven development while pair programming. We meet biweekly in various places around the Orlando area, pick a programming language to use, a problem to attempt to solve, and briefly discuss a proposed implementation to follow.
    DOC
    meetup.next_meetup = doc.search("div li time span").first.text.strip
    meetup.url = "http://www.meetup.com/orlandodojo/"
    meetup 
  end

  def self.raspberry_pi_group
    doc = Nokogiri::HTML(open('http://www.meetup.com/Central-Florida-RPi-Users-Group/'))
    meetup = self.new
    meetup.name = doc.search("h1 span").text
    meetup.about = <<-DOC
    The Central Florida Raspberry Pi Users Group’s mission includes creating, and maintaining an active user and developer community for the Raspberry Pi platform in the Central Florida area. Meetups for the Raspberry Pi are called Raspberry Jams. We have been meeting at different venues in order to cover more territory. Be sure to check out our next Raspberry Jam!
    DOC
    meetup.next_meetup = doc.search("div li time span").first.text.strip
    meetup.url = "http://www.meetup.com/Central-Florida-RPi-Users-Group/"
    meetup 
  end

  def self.orlando_ios_dev_group
    doc = Nokogiri::HTML(open('http://www.meetup.com/Orlando-iOS-Developer-Group/'))
    meetup = self.new
    meetup.name = doc.search("h1 span").text
    meetup.about = <<-DOC
    This group is an attempt to organize iOS developers in the Central Florida area. The group's purpose is to help developers further their iOS, iPhone, iPad education, and network with fellow iOS developers in the area. Anyone who wants to learn, teach, and get to know your fellow geeks should join.
    DOC
    meetup.next_meetup = doc.search("ul script h2").text.strip
    meetup.url = "http://www.meetup.com/Orlando-iOS-Developer-Group/"
    meetup 
  end

  def self.iot_orlando
    doc = Nokogiri::HTML(open('http://www.meetup.com/iot-orlando/'))
    meetup = self.new
    meetup.name = doc.search("h1 span").text
    meetup.about = <<-DOC
    This is the place for people with a project or product idea they want to have connected to the internet. IoT has a lot of potential for new and exciting devices, with so many hardware and software options out there it can be difficult to get started or know what technology is right for your project. As a group we can share knowledge and learn together to unlock the IoT potential. Designers, programmers, engineers and entrepreneurs are all welcome. We will offer introductory overviews of the relevant technologies but will also generate small groups building out their ideas.
    DOC
    meetup.next_meetup = doc.search("div li time span").first.text.strip
    meetup.url = "http://www.meetup.com/iot-orlando/"
    meetup 
  end

  


  

end