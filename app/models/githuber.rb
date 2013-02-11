class Githuber < ActiveRecord::Base
  attr_accessible :contributions, :country, :followers, :interests, :language, :link, :location, :name, :reps, :username

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      githuber = Githuber.create! row.to_hash
      githuber.country = 'Ukraine'
      githuber.save
    end
  end

end
