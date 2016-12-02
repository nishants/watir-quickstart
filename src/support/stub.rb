require "service_mock"

class Stub

  def self.start(config)
    server = ServiceMock::Server.new(config.jar, config.path)
    server.start do |server|
      server.port = config.port.to_i
      server.root_dir = config.root_dir
      server.verbose = config.verbose == 'true'
    end
    server
  end
end