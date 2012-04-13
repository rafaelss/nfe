module Nfe
  module Template
    class IcmsTot < Base
      attr_accessor :v_bc, :v_icms, :v_prod, :v_pis, :v_cofins
      attr_writer :v_bcst, :v_st, :v_frete, :v_seg, :v_desc, :v_ii, :v_ipi, :v_outro, :v_nf

      def v_bcst
        "%0.2f" % @v_bcst
      end

      def v_st
        "%0.2f" % @v_st
      end

      def v_frete
        "%0.2f" % @v_frete
      end

      def v_seg
        "%0.2f" % @v_seg
      end

      def v_desc
        "%0.2f" % @v_desc
      end

      def v_ii
        "%0.2f" % @v_ii
      end

      def v_ipi
        "%0.2f" % @v_ipi
      end

      def v_outro
        "%0.2f" % @v_outro
      end

      def v_nf
        "%0.2f" % @v_nf
      end
    end
  end
end
