#encoding: UTF-8
class Ithero < ActiveRecord::Base
  attr_accessible :nothing, :age, :currency, :city, :company_size, :date, :education, :english, :gender, :language, :netwage, :spec_more, :speciality, :tenure, :tenure_current, :user_agent, :wage_diff

  scope :kiev, where(:city => 'Киев')
  scope :kharkov, where(:city => 'Харьков')
  scope :lvov, where(:city => 'Львов')
  scope :dnepr, where(:city => 'Днепропетровск')

  scope :senior, where('speciality like ?','%Senior Software Engineer%')
  scope :middle, where(:speciality => 'Software Engineer')
  scope :junior, where('speciality like ?','%Junior Software Engineer%')

  scope :dollar, where(:currency=>'d')

  scope :male, where(:gender=>'m')
  scope :female, where(:gender=>'f')

  scope :pm, where('speciality like ? or ?','%Project manager%', '%Technical Lead%')
  scope :qa, where('speciality like ?','%QA Engineer%')

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      ithero=Ithero.create! row.to_hash
      ithero.year=2012
      ithero.save
    end
  end

  def self.average_for(speciality)
    where(:language => speciality).where('speciality like ?','%Software Engineer%').average(:netwage)
  end

  def self.average_for_pos(position)
    where(:speciality=>position).average(:netwage)
  end

  def self.diff_for(speciality)
    where(:language => speciality).where('speciality like ?','%Software Engineer%').average(:wage_diff)
  end

  def self.average_for_spec(speciality)
    where('speciality like ?','%speciality%').average(:netwage)
  end

  def self.average
   all.average(:netwage)
  end

  
end
