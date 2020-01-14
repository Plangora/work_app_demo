defmodule WorkApp.Employee do
  use Ecto.Schema
  import Ecto.Changeset

  embedded_schema do
    field :first_name, :string
    field :last_name, :string
  end

  def changeset(employee, attrs) do
    employee
    |> cast(attrs, [:first_name, :last_name])
    |> validate_required([:first_name, :last_name])
  end
end