require "service_mock"

class Stub

  @@server = nil
  @@config = nil

  def self.ready(config)
    @@config = config
    @@server || setup
  end

  def self.stop
    @@server.stop { |server| server.port = @@config.port } unless @@server.nil?
  end

  def self.setup
    server = ServiceMock::Server.new(@@config.jar, @@config.path)
    server.start do |server|
      server.port = @@config.port.to_i
      server.root_dir = @@config.root_dir
      server.verbose = @@config.verbose == 'true'
      server.wait_for_process = true
      server.inherit_io = false
    end
    @@server = server
  end
end