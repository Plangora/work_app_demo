defmodule WorkApp.WesternFormatter do
  @behaviour WorkApp.Formatter

  @impl true
  def format_name(%{first_name: first_name, last_name: last_name}) do
    "#{first_name} #{last_name}"
  end
end