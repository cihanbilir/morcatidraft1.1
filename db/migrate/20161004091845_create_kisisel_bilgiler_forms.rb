class CreateKisiselBilgilerForms < ActiveRecord::Migration
  def change
    create_table :kisisel_bilgiler_forms do |t|
      t.references :basvuran, index: true
      t.date :dogum_yili
      t.string :is_durumu
      t.string :sosyal_guvence_durumu
      t.string :il_ilce
      t.string :medeni_durum
      t.date :evlilik_yili
      t.integer :cocuk_sayisi
      t.string :uyruk
      t.string :dili
      t.string :cevirmen_ihtiyaci
      t.string :engellilik_durumu
      t.string :hamilelik_durumu
      t.date :hamilelik_baslangic
      t.string :hamilelik_doktor_kontrolunde
      t.string :ruhsal_destek_aldi_aliyor
      t.text :notlar

      t.timestamps
    end
  end
end
