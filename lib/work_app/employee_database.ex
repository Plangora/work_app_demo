defmodule WorkApp.EmployeeDatabase do
  use Agent

  def start_link(_) do
    Agent.start_link(fn -> %{} end, name: __MODULE__)
  end

  # %{employee_ID => employee}
  def list_employees do
    Agent.get(__MODULE__, &Map.values/1)
  end

  def add_employee(employee) do
    Agent.update(__MODULE__, &(Map.put(&1, employee.id, employee)))
  end

  def remove_employee(employee) do
    Agent.update(__MODULE__, &(Map.delete(&1, employee.id)))
  end

  def get(employee_id) do
    Agent.get(__MODULE__, &(Map.get(&1, employee_id)))
  end
end