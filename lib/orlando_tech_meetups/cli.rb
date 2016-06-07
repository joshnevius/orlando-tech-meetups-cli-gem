class OrlandoTechMeetups::CLI 

  def call
    list_meetups
    menu
  end

  def menu
    input = nil
    while input != "exit" 
      input = gets.strip.downcase
      case input
      when '1'
        more_info
      when '2'
        more_info
      when '3'
        more_info
      when '4'
        more_info
      when '5'
        more_info
      when '6'
        more_info
      when '7'
        more_info
      when '8'
        more_info
      when '9'
        more_info
      when '10'
        more_info
      when '11'
        more_info
      when '12'
        more_info
      when '13'
        more_info
      when '14'
        more_info
      when '15'
        more_info
      when '16'
        more_info
      when '17'
        more_info
      when 'menu'
        list_meetups
      else 'exit' || list_meetups
        puts "To get a meetup added, go to github.com/joshnevius and reach out to the creator."
      end
    end
  end

  def list_meetups
    puts "Hello and Welcome to the Orlando Tech Scene!"
    puts "Which tech meetup/group are you interested in learning about?" 
    meetups
  end

  def meetups
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

  def more_info
    puts "Would you like to join this upcoming meetup? y/n"
    input = gets.strip
    if input == "y"
      puts "Copy and paste this link into your browser and go RSVP."
      puts "Enter 1 - 17. To return to menum type 'menu'. To exit, type 'exit'."
    elsif input == "n"
      list_meetups
    else
      puts "I have no clue what you're trying to do."
      list_meetups
    end
  end
end