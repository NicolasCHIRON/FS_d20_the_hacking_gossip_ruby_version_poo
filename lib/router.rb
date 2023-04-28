require_relative 'controller'

class Router

  def initialize
    @controller = Controller.new  
  end

  def perform
    system("clear") || system("cls")
    puts "Bienvenue dans l'application indispensable à toute vie humaine, The Gossip Project !"

    while true
      puts "\n\nQue veux-tu faire ? [1] Créer un potin | [2] Voir tous les potins | [3] Supprimer un potin | [4] Quitter l'application"
      choice = gets.chomp.to_i
      case choice
      when 1
        @controller.create_gossip
      when 2
        @controller.index_gossips
      when 3
        @controller.delete_gossip
      when 4
        system("clear") || system("cls")
        puts "\n\nAu revoir et à la prochaine !\n\n"
        break
      else
        puts "Merci de saisir un choix valable"
      end
    end
  end
  
end