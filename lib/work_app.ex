defmodule WorkApp do
  alias WorkApp.Employee

  @formatter Application.get_env(:work_app, :formatter)

  def format(employee), do: @formatter.format_name(employee)

  def create_employee(attrs) do
    case Employee.changeset(%Employee{}, attrs) do
      %{valid?: true} = changeset ->
        employee =
          changeset
          |> Ecto.Changeset.apply_changes()
          |> Map.put(:id, Ecto.UUID.generate())
        {:ok, employee}
      changeset ->
        {:error, changeset}
    end
  end
end
