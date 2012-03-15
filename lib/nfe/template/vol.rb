module Nfe
  module Template
    class Vol < Base
      attr_accessor :q_vol, :esp
      attr_writer :peso_l, :peso_b

      def peso_l
        "%0.3f" % @peso_l
      end

      def peso_b
        "%0.3f" % @peso_b
      end
    end
  end
end
