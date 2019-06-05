class AddActiveToKepplerBannersBanners < ActiveRecord::Migration[5.2]
  def change
    add_column :keppler_banners_banners, :active, :boolean
  end
end
