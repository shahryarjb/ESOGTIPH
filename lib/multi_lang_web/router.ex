defmodule MultiLangWeb.Router do
  use MultiLangWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers

    # plug SetLocale, gettext: MultiLangWeb.Gettext, default_locale: "ru"
    plug SetLocale, gettext: MultiLangWeb.Gettext, default_locale: "fa", cookie_key: "project_locale" #cookie_key is optional
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", MultiLangWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :dummy
  end


  scope "/:locale", MultiLangWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", MultiLangWeb do
  #   pipe_through :api
  # end
end
