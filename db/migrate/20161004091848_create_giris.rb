class CreateGiris < ActiveRecord::Migration
  def change
    create_table :giris do |t|
      t.date :ilk_basvuru_tarihi
      t.references :gonullu, index: true
      t.references :basvuran, index: true
      t.string :morcati_destegi_aliyor
      t.string :iletisime_gecen
      t.string :iletisime_gecme_yolu
      t.text :notlar

      t.timestamps
    end
  end
end
