class User < ActiveRecord::Base
validates_presence_of :user_name, :password, :first_name, :last_name
end
