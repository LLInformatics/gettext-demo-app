defmodule GettextDemoAppWeb.Locale do
  import Plug.Conn

  def init(opts), do: opts

  def call(conn, _opts) do
    case conn.params["locale"] || get_session(conn, :locale) do
      nil     -> conn
      locale  ->
        Gettext.put_locale(GettextDemoAppWeb.Gettext, locale)
        put_session(conn, :locale, locale)
    end
  end
end
