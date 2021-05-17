class Ownerinfo < ApplicationRecord
    belongs_to :owner

    #どのオーナーが投稿したか必ず入力されているようにする
    validates :owner_id, {presence: true}
    #電話番号のバリデーション(ハイフンなし10桁or11桁)
    #VALID_PHONE_REGEX = /\A\d{10}$|^\d{11}\z/
    #validates :phone_number, format: { with: VALID_PHONE_REGEX }
end
