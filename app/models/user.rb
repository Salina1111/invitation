class User < ApplicationRecord
  

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :invitable, :invite_for => 2.weeks

  validates :firstname, presence: true       
  validates :lastname, presence: true
  validates :roll_number, presence: true
  validates :batch, presence: true
  validates :faculty, presence: true
  validates :phone_number, presence: true
  validates :address, presence: true


end
