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
        puts "#{the_group.about}"
        puts "The next meetup is: #{the_group.next_meetup}"
        puts "\n"
        more_info
      elsif input == "menu"
        list_meetups
      else
        puts "Hope to see you soon!"
      end
    end
  end

  def list_meetups
    puts "Hello and Welcome to the Orlando Tech Scene!"
    puts "Which tech meetup group are you interested in learning about?" 
    meetup
  end

  def meetup
    @meetups = OrlandoTechMeetups::Meetups.all
    @meetups.each.with_index(1) do |meetups, i|
      puts "#{i}. #{meetups.name}"
    end
  end

  def more_info
    puts "Would you like to join this upcoming meetup? yes/no"
    input = gets.strip
    if input == 'yes'
      puts "Copy and paste this link into your browser and go RSVP."
      puts "#{@meetups[input.to_i].url}"
      puts "\n"
      puts "To return to menu, type 'menu'. To exit, type 'exit'."
    elsif input == 'no'
      list_meetups
    else
      puts "I have no clue what you're trying to do."
      list_meetups
    end
  end
end