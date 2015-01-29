require 'socket'

'''
The API to this is very simple

GET / - returns all keys
GET /key - returns value of key "key"
GET /key/value - sets value of key "key" to value
'''

class SocketListen
  def initialize port=8181
    @data = { 'apache' => 'apache', 'bsd' => 'mit', 'chef' => 'apache' }
    @port = port || 8181
    @server = TCPServer.new @port
    loop {
      client = @server.accept
      request = client.gets
      puts request
      client.puts request
      client.close
    }
  end
end
SocketListen.new()
