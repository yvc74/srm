defmodule GW.Repo.Migrations.HistoryTrailerStatus do
    use Ecto.Migration

    def change do
      create table(:history_trailer_status) do
        add :trailer_id, references(:trailers, on_delete: :delete_all), null: false
        add :trailer_status_id, references(:trailer_status, on_delete: :delete_all), null: false
        add :user_id, references(:users, on_delete: :delete_all), null: false
      timestamps(type: :timestamptz)
    end

    create index(:history_trailer_status, [:trailer_id])
    create index(:history_trailer_status, [:trailer_status_id])
    create index(:history_trailer_status, [:user_id])

  end

end
