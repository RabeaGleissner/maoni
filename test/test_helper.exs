ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Maoni.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Maoni.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Maoni.Repo)

