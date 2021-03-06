defmodule SourceModuleB do
  use Delx, otp_app: :delx

  defdelegate [my_fun(arg1, arg2, arg3), my_other_fun(), my_other_fun(arg)],
    to: TargetModule

  def undelegated_fun(arg), do: {:ok, arg}
end
