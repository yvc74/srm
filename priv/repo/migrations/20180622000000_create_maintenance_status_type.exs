defmodule SRM.Repo.Migrations.CreateMaintenanceStatusType do
    use Ecto.Migration
  
    def change do
      create table(:maintenance_status_type) do
        add :maintenance_status_name, :string, size: 75, null: false
      timestamps(type: :timestamptz)
    end

  end
  
end