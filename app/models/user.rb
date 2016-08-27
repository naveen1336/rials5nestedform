class User < ApplicationRecord



has_many :licenses
has_many :addresses
accepts_nested_attributes_for :licenses
accepts_nested_attributes_for :addresses
end
