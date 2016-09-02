ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Feedbacker.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Feedbacker.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Feedbacker.Repo)

