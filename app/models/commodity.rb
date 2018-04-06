class Commodity < ApplicationRecord
    belongs_to :request
    mount_uploader :product_image, ImageUploader
end
