defmodule WorkApp.ChineseCustomer do
  defstruct [:given_name, :surname]

  defimpl WorkApp.Greeter, for: __MODULE__ do
    def greet(customer) do
      "你好#{customer.surname}#{customer.given_name}"
    end
  end
end