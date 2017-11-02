require 'rack'

app = Proc.new do |env|
  # p Rack::Request.new(env)
  req = Rack::Request.new(env)
  res = Rack::Response.new
  p "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  p req.methods
  p "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  res['Content-Type'] = 'text/html'
  path = req.path
  res.write(path.to_s)
  res.finish
end

Rack::Server.start(
  app: app,
  Port: 3000
)
