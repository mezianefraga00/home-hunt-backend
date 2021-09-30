class Request < ApplicationRecord
  belongs_to :client
  belongs_to :home
end
