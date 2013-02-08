class Githuber < ActiveRecord::Base
  attr_accessible :contributions, :country, :followers, :interests, :language, :link, :location, :name, :reps, :username
end
