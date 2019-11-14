defmodule WorkApp do
  @formatter Application.get_env(:work_app, :formatter)

  def format(employee), do: @formatter.format_name(employee)
end
