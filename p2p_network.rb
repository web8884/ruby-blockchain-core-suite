# P2P Decentralized Network Node
require 'socket'
class P2PNetwork
  PORT = 3000
  def initialize
    @peers = []
    @server = TCPServer.new(PORT)
  end

  def connect_peer(host)
    socket = TCPSocket.new(host, PORT)
    @peers << socket
  end

  def broadcast(data)
    @peers.each { |p| p.puts(data) }
  end

  def listen
    loop do
      client = @server.accept
      Thread.new { handle_client(client) }
    end
  end

  private
  def handle_client(client)
    while line = client.gets
      puts "Received: #{line}"
    end
  end
end
