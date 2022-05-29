# Rack middleware
class Hello
  def initialize(app)
    @app = app
  end

  def call(env)
    code, headers, body = @app.call(env)
    p "===== Hello! ====="
    return [code, headers, body]
  end
end

# RailsへRack middlewareとして組み込み
Rails.application.config.middleware.use Hello
