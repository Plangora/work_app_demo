defmodule WorkApp.Formatter do
  @callback format_name(WorkApp.Employee.t()) :: String.t()
end