module MCollective
  module Util
    module Service
      class ServiceService<Base
        def stop
          %x{sudo service #{@service} stop}
          sleep 1
          state
        end

        def start
          %x{sudo service #{@service} start}
          sleep 1
          state
        end

        def restart
          %x{sudo service #{@service} restart}
          sleep 1
          status
        end

        def status
          state[:status]
        end

        def state
          msg = %x{sudo service #{@service} status}
          {:status => msg, :msg => msg}
        end
      end
    end
  end
end