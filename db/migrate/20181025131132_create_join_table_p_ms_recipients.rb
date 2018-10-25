class CreateJoinTablePMsRecipients < ActiveRecord::Migration[5.2]
  def change
    create_join_table :pms, :recipients do |t|
      t.index [:pm_id, :recipient_id]
      # t.index [:recipient_id, :pm_id]
    end
  end
end
