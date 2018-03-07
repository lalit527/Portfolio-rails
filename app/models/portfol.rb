class Portfol < ApplicationRecord
  validates_presence_of :title, :body
end
