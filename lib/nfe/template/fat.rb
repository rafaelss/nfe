module Nfe
  module Template
    class Fat < Base
      attr_accessor :n_fat
      attr_writer :v_orig, :v_liq

      def v_orig
        "%0.2f" % @v_orig
      end

      def v_liq
        "%0.2f" % @v_liq
      end
    end
  end
end
