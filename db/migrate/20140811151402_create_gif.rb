class CreateGif < ActiveRecord::Migration
  def change
    create_table :gifs do |t|
      t.string :url
      t.string :description
    end
  end
end
