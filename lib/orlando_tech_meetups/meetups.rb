class OrlandoTechMeetups::Meetups
  attr_accessor :name, :about, :next_meetup

  def self.meetups
    puts <<-DOC
    1. Orlando Tech
    2. Orlando Developers Meetup
    3. Code For Orlando
    4. The Iron Yard - Orlando
    5. Front End Orlando
    6. Downtown UX Meetup
    7. The Orlando Python User Group
    8. Orlando MongoDB Group
    9. Orlando Ruby Users Group
    10. Orlando PHP Users Group
    11. Central Florida Android Developers Group
    12. OrlandoJS
    13. Orlando Java User Group
    14. Orlando Ruby Dojo
    15. Central Florida Raspberry Pi Users Group
    16. Orlando iOS Developer Group
    17. Internet of Things (IoT) Orlando
    DOC
  end
