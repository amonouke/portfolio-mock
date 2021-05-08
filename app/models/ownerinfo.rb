class Ownerinfo < ApplicationRecord
    #どのオーナーが投稿したか必ず入力されているようにする
    validates :owner_id, {presence: true}
end
