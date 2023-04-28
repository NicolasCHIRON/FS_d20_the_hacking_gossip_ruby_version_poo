class View

  def initialize

  end

  def create_gossip
    system("clear") || system("cls")
    puts "Et c'est parti pour raconter de la merde sur la vie des gens ! \n\n"
    puts "Alors, raconte-nous tout ! Qui est l'auteur de ce potin ??\n\n"
    print "> "
    author_gossip = gets.chomp.to_s
    puts "\nHan pas possible ! Et il a dit quoi ?\n\n"
    print "> "
    content_gossip = gets.chomp.to_s
    puts "\nTrop délire ! Bob t'as entendu ça ?! \n\nC'est noté mon chou, n'hésites pas à revenir si t'as d'autres trucs à nous raconter."
    return params = {content: content_gossip, author: author_gossip}
  end

  def index_gossips(gossips)
    system("clear") || system("cls")
    puts "Et voici tout ce qui se raconte ces temps-ci !\n\n"
    gossips.each.with_index do |gossip, index|
      puts "#{index + 1}- #{gossip[0]} a dit : #{gossip[1]}!"
    end
  end

  def delete_gossip
    system("clear") || system("cls")
    puts "Quel potin veux-tu supprimer ? (selon les index de la liste des potins)"
    print "> "
    return gets.chomp.to_i
  end

end