class Owner < ApplicationRecord
  has_one :ownerinfo, dependent: :destroy #オーナー店舗情報との紐付け、またオーナーアカウント削除時にオーナー店舗情報も削除

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
