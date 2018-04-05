class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    has_secure_password
    validates :email, uniqueness: true
    validates :password, presence: true, on: :create
    validate :seller_or_buyer
    
    def seller_or_buyer
        if buyer_flag == seller_flag
            errors.add(:buyer_flag, "どちらか一つのみ選択してください。")
        end
    end
    
    mount_uploader :image, ImageUploader
    
    has_many :requests

end

