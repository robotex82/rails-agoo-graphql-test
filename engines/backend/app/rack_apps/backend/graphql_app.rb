module Backend
  class GraphqlApp
    def self.call(env)
      @app ||= new(env)
      @app.hello_world
    end

    def initialize(env)
      @env = env
    end

    def hello_world
      [200, {"Content-Type" => "text/html"}, [{ "data" => { "hello" => "Hello World from the Backend!" } }.to_json]]
    end
  end
end
