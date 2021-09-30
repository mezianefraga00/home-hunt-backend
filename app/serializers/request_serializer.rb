class RequestSerializer < ActiveModel::Serializer
  attributes :id, :date_request, :price_agree, :message
  has_one :client
  has_one :home
end
