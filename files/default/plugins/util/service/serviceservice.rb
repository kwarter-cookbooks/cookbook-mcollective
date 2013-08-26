module MCollective
  module Util
    module Service
      class ServiceService<Base
        def stop
          %x{service #{@service} stop}
          sleep 1
          state
        end

        def start
          %x{service #{@service} start}
          sleep 1
          state
        end

        def restart
          %x{service #{@service} restart}
          sleep 1
          status
        end

        def status
          state[:status]
        end

        def state
          msg = %x{service #{@service} status}
          {:status => msg.split("\s")[1].downcase, :msg => msg}
        end
      end
    end
  end
end