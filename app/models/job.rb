#encoding: UTF-8
class Job < ActiveRecord::Base
  
  attr_accessible :category, :company, :date, :is_active, :responses, :title, :city, :datestr

  scope :kiev, where('city like ?', 'Киев')
  scope :kharkov, where('city like?','Харьков')
  scope :lviv, where('city like','Львів')

  scope :pm, where(:category => 'Project Manager')
  scope :qa, where(:categroy => 'QA')

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      job = Job.create! row.to_hash
      job.save
    end
  end

  def self.count_for(category)
    where(:category => category).count
  end

  def self.average_for(category)
    where(:category => category).average(:responses)
  end

  def self.average_for_comp(company)
    where(:company => company).average(:responses)
  end

  def self.count_jobs(company)
    where(:company => company).count
  end

end
