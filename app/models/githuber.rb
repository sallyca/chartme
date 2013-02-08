class Githuber < ActiveRecord::Base
  attr_accessible :contributions, :followers, :interest, :language, :link, :location, :name, :reps, :username
end
