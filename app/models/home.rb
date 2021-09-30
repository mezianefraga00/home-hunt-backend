class Home < ApplicationRecord
  belongs_to :owner,class_name: "Owner", optional: true
  belongs_to :location,class_name: "Location", optional: true
  has_many :requests
  
end
