defmodule GettextDemoAppWeb.Router do
  use GettextDemoAppWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug GettextDemoAppWeb.Locale, locale: "en"
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", GettextDemoAppWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", GettextDemoAppWeb do
  #   pipe_through :api
  # end
end
