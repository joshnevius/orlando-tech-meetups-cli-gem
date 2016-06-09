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
        if the_group.next_meetup < 0.to_s
          puts "Sorry, there's no meetup planned yet!"
        end
        puts "\n"
        puts "#{the_group.url}"
        puts "Copy and paste the link above into your browser to check it out and learn more!"
        puts "To go back to the menu, enter 'menu'. To exit, type 'exit'."
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

end