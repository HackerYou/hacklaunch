class SignUp < ActiveRecord::Base

  validates :email, presence: {message: "is blank"}, uniqueness: true
  validates :name, presence: true

end
