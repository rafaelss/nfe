module Nfe
  module Template
    class PisAliq < Base
      attr_accessor :cst
      attr_writer :v_bc, :p_pis, :v_pis

      def v_bc
        "%0.2f" % @v_bc
      end

      def p_pis
        "%0.2f" % @p_pis
      end

      def v_pis
        "%0.2f" % @v_pis
      end
    end
  end
end
