module Nfe
  module Template
    class Imposto < Base
      attr_writer :icms, :ipi, :pis, :cofins

      def icms
        @icms.render
      end

      def ipi
        @ipi.render
      end

      def pis
        @pis.render
      end

      def cofins
        @cofins.render
      end
    end
  end
end
