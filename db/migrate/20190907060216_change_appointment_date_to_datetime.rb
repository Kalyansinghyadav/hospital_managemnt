class ChangeAppointmentDateToDatetime < ActiveRecord::Migration[6.0]
  def change
  	change_column :appointments, :date_of_appointment, :datetime
  end
end
