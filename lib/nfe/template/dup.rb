module Nfe
  module Template
    class Dup < Base
      attr_accessor :n_dup, :d_venc
      attr_writer :v_dup

      def v_dup
        "%0.2f" % @v_dup
      end
    end
  end
end
