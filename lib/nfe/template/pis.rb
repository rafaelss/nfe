module Nfe
  module Template
    class Pis < Base
      attr_writer :pis_aliq

      def pis_aliq
        @pis_aliq.render
      end
    end
  end
end
