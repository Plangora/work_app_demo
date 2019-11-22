defmodule WorkApp.WesternCustomer do
  defstruct [:first_name, :last_name]

  defimpl WorkApp.Greeter, for: __MODULE__ do
    def greet(customer) do
      "Hello #{customer.first_name} #{customer.last_name}"
    end
  end
end