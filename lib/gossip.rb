require 'csv'

class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end
  
  def save
    gossip_to_save = [author, content]
    CSV.open("db/gossip.csv", "a") {|csv| csv << gossip_to_save}
  end

  # Lis toute les lignes du CSV et retourne un array contenant toutes les instances sauvegardées.
  def self.all
    all_gossips = Array.new
      CSV.open("db/gossip.csv", "r").each do |author, content|
        gossip_provisoire = Gossip.new(author, content)
        all_gossips << [gossip_provisoire.author, gossip_provisoire.content]
      end
    return all_gossips
  end

  def self.delete(param)
    table = CSV.parse(File.read("db/gossip.csv"), headers:false)
    table.delete_at(param - 1)
    CSV.open("db/gossip.csv", "w"){|content| table.each{|line| content << line}}
  end
end