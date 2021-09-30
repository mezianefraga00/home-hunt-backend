class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone_nbr, :login, :password_email
end
