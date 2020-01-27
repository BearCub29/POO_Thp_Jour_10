require 'pry'
require 'time'
require_relative 'event'
class EventCreator
 
    puts "Salut, tu veux créer un événement ? Cool !"
    puts "Commençons. Quel est le nom de l'événement ?"
    print ">"
    @@title = gets.chomp 
    puts "Super. Quand aura-t-il lieu ?"
    print ">"
    @@start_date = gets.chomp 
    puts "Au top. Combien de temps va-t-il durer (en minutes) ?"
    print ">"
    @@duration = gets.chomp 
    puts "Génial. Qui va participer ? Balance leurs e-mails"
    print ">"
    @@attendees = gets.chomp 
    

    x = Event.new(@@start_date,@@duration,@@title,@@attendees)

    puts "Super, c'est noté, ton évènement a été créé !"
    puts x.to_s
    
end



