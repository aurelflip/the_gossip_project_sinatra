class Gossip
  attr_accessor :author, :content

  def initialize(content, author)
    @content = content
    @author = author
  end
 #Ajoute un nouveau gossip
  def save
    CSV.open('./db/gossip.csv', 'ab') do |csv|
      csv << [@content, @author]
    end
  end
  def self.all
  all_gossips = []
  CSV.read("./db/gossip.csv").each do |csv_line|
    all_gossips << Gossip.new(csv_line[0], csv_line[1])
  end
  return all_gossips
end
end
  

