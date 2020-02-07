class ChangeTypeToKindOnMainInstrumentsTable < ActiveRecord::Migration[5.2]
  def change
    change_table :main_instruments do |t|
      t.rename :type, :kind
    end
  end
end
