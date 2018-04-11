class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    validates :name, presence: true
    validates :email, presence: true
    # has_secure_password
    validates :email, uniqueness: true
    validates :password, presence: true, on: :create
    validate :seller_or_buyer
    
    def seller_or_buyer
        if buyer_flag == seller_flag
            errors.add(:buyer_flag, "どちらか選択してください。")
        end
    end
    
    mount_uploader :image, ImageUploader
    
    has_many :requests
    
    #before_save :check_instance

    #def check_instance
    #  Rails.logger.debug(self.inspect)
    #end
    
end

