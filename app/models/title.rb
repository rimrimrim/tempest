class Title < ApplicationRecord
    mount_uploader :picture, PictureUploader
    default_scope -> { order(created_at: :desc) }

    # プロパティの設定
attr_accessor :contents

def initialize(contents)
  @contents = contents
end
end
