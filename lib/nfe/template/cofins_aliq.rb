module Nfe
  module Template
    class CofinsAliq < Base
      attr_accessor :cst
      attr_accessor :v_bc, :p_cofins, :v_cofins

      def v_bc
        "%0.2f" % @v_bc
      end

      def p_cofins
        "%0.2f" % @p_cofins
      end

      def v_cofins
        "%0.2f" % @v_cofins
      end
    end
  end
end
