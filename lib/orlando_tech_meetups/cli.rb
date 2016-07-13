class OrlandoTechMeetups::CLI 
  def call
    list_meetups
    menu
  end

  def menu
    input = nil
    while input != "exit" 
      input = gets.strip.downcase
      if input.to_i > 0
        the_group = @meetups[input.to_i-1]
        puts "#{the_group.name}"
        puts "The next meetup is: #{the_group.next_meetup}"
        puts "#{the_group.url}"
        puts "Copy and paste the link above into your browser to check it out and learn more!"
        puts "To go back to the menu, enter 'menu'. To exit, type 'exit'."
      elsif input == "menu"
        meetup
      else
        puts "Hope to see you soon!"
      end
    end
  end

  def list_meetups
    puts "Hello and Welcome to the Orlando Tech Scene!"
    puts "Loading meetups"
    meetup
    puts "Enter the number of the meetup group you're interested in going to:" 
  end

  def meetup
    @meetups = OrlandoTechMeetups::Meetups.all
    @meetups.each.with_index(1) do |meetup, i|
      puts "#{i}. #{meetup.name}"
    end
  end

end