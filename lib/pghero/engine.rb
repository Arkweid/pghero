module PgHero
  class Engine < ::Rails::Engine
    isolate_namespace PgHero

    initializer "pghero", group: :all do |config|
      PgHero.time_zone = PgHero.config["time_zone"] if PgHero.config["time_zone"]
      # View files working with flash
      config.middleware.use ActionDispatch::Flash

      # We can add all of the public assets from our engine and make them
      # available to use.  This allows us to use javascripts, images, stylesheets
      # etc.
      config.middleware.insert_before(::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public")
    end
  end
end
