require_relative 'gossip'
require_relative 'view'

class Controller

  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    new_gossip = Gossip.new(params[:author], params[:content])
    new_gossip.save
  end

  def index_gossips
    gossips = Gossip.all
    @view.index_gossips(gossips)
  end

  def delete_gossip
    param = @view.delete_gossip
    Gossip.delete(param)
  end
end