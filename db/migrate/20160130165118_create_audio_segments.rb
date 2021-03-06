class CreateAudioSegments < ActiveRecord::Migration[5.0]
  def change
    create_table :audio_segments do |t|
      t.string :url, null: false
      t.string :title, null: false
      t.string :slug, null: false
      t.integer :met_start, null: false
      t.integer :met_end, null: false
      t.belongs_to :channel, index: true, foreign_key: true

      t.timestamps
      t.index :slug, unique: true
    end
  end
end
