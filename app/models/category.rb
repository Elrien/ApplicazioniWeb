class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :tweets
  validates_uniqueness_of :name
  
  def Category.find_or_create_by_name(name)
    category = Category.where("name = ?", name).first
      if category.nil?
          category = Category.create(:name => name)  
      end
  end
  
end
