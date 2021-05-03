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
end
  

