defmodule WorkApp do
  @moduledoc """
  This is a sample app for hwo to create an Elixir app.
  """
  alias WorkApp.Employee

  @formatter Application.get_env(:work_app, :formatter)

  @doc """
  Format the proper greeting based on what is side for the formatter option.
  """
  @spec format(WorkApp.Formatter.t()) :: String.t()
  def format(employee), do: @formatter.format_name(employee)

  @doc """
  Create an employee or will return the changeset with errors.
  """
  @spec create_employee(map()) :: {:ok, WorkApp.Employee.t()} | {:error, Ecto.Changeset.t()}
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
