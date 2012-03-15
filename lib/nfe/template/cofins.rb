module Nfe
  module Template
    class Cofins < Base
      attr_writer :cofins_aliq

      def cofins_aliq
        @cofins_aliq.render
      end
    end
  end
end
