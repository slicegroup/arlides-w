class AddVideoToKepplerBannersBanners < ActiveRecord::Migration[5.2]
  def change
    add_column :keppler_banners_banners, :video, :string
  end
end
