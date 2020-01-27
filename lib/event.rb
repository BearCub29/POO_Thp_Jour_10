require 'pry'
require 'time'

class Event
  attr_accessor :start_date , :duration , :title , :attendees

  def initialize(start_date,duration,title,attendees)
    @start_date = Time.parse(start_date)
    @duration = duration.to_i
    @title = title
    @attendees = attendees
    @time_now = Time.now
  end

  def start_date
    return @start_date 
  end

  def duration
    return @duration
  end

  def title
    return @title
  end

  def attendees
    return @attendees
  end

  def postpone_24h
    return @postpone_24h = @start_date + 24*60*60
  end

  def end_date
   return @end_date = @start_date + @duration
  end

  def is_past?
    if @start_date < @time_now
      puts "Lévenement est passé,dsl :("
    else 
      puts "L'évenement n'est pas encore passé :)"
    end
  end

  def is_futur?
    if @start_date > @time_now
      puts "Lévenement n'est pas encore passé :)"
    else 
      puts "L'évenement est passé, dsl :("
    end   
  end
  
  def is_soon?
    if @time_now - @start_date <= 30*60 && @start_date > @time_now
      puts "Moins de 30 minutes avant l'évennement"
    elsif @time_now - @start_date > 30*60 && @start_date > @time_now
      puts "Plus de 30 minutes avant l'évenement"
    else
      puts "l'evenement est passé,dsl :("
    end
  end

  def to_s
    puts ">Titre : #{title}"
    puts ">Date de début : #{start_date.strftime("%Y-%m-%d %H:%M:%S")}"
    puts ">Durée : #{duration} minutes"
    puts ">Invités : #{attendees.join(" ; ")}"
  end
end

