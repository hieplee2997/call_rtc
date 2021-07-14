defmodule CallRtc.Repo do
  use Ecto.Repo,
    otp_app: :call_rtc,
    adapter: Ecto.Adapters.Postgres
end
