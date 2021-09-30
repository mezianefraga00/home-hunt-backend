class HomeSerializer < ActiveModel::Serializer
  attributes :id, :home_type, :surface, :parking, :heating, :backyard, :laundry, :dishawasher, :cooling, :deal_type, :nbr_bedroom, :nbr_bathroom, :pets_allowed, :img_url, :description
  has_one :owner
  has_one :location
end
