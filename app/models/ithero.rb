#encoding: UTF-8
class Ithero < ActiveRecord::Base
  attr_accessible :nothing, :age, :city, :company_size, :date, :education, :english, :gender, :language, :netwage, :spec_more, :speciality, :tenure, :tenure_current, :user_agent, :wage_diff

  scope :kiev, where(:city => 'Киев')
  scope :kharkov, where(:city => 'Харьков')
  scope :lvov, where(:city => 'Львов')

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Ithero.create! row.to_hash
    end
  end

  def self.average_for(speciality)
    where(:language => speciality).where('speciality like ?','%Software Engineer%').average(:netwage)
  end

  
end
