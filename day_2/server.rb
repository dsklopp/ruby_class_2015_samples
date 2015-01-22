'''
AUTHOR:      Daniel Klopp (dsklopp@gmail.com)
LICENSE:     MIT
DESCRIPTION: Server daemon for HAProxy, used to start and stop the daemon
             this is a prototype of the real one
'''

  class Server
    def initialize(config)
      @config=config
      puts "Initialized HaproxyRest::" + self.class.to_s
      puts "Configuration file was: " + config
    end
    def start()
      `sudo service haproxy start`
    end
    def stop()
      `sudo service haproxy stop`
    end
    def restart()
      `sudo service haproxy restart`
    end
  end
