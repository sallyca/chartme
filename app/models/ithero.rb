#encoding: UTF-8
class Ithero < ActiveRecord::Base
  attr_accessible :nothing, :age, :city, :company_size, :date, :education, :english, :gender, :language, :netwage, :spec_more, :speciality, :tenure, :tenure_current, :user_agent, :wage_diff

  scope :kiev, where(:city => 'Киев')
  scope :kharkov, where(:city => 'Харьков')
  scope :lvov, where(:city => 'Львов')

  scope :senior, where('speciality like ?','%Senior Software Engineer%')
  scope :middle, where(:speciality => 'Software Engineer')
  scope :junior, where('speciality like ?','%Junior Software Engineer%')

  scope :male, where(:gender=>'m')
  scope :female, where(:gender=>'f')

  scope :pm, where('speciality like ?','%Project manager%')
  scope :qa, where('speciality like ?','%QA Engineer%')

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      ithero=Ithero.create! row.to_hash
      ithero.year=2011
      ithero.save
    end
  end

  def self.average_for(speciality)
    where(:language => speciality).where('speciality like ?','%Software Engineer%').average(:netwage)
  end

  def self.average
   all.average(:netwage)
  end

  
end
