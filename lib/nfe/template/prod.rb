module Nfe
  module Template
    class Prod < Base
      attr_accessor :c_prod, :c_ean, :x_prod, :ncm, :cfop, :u_com, :c_ean_trib, :u_trib, :ind_tot, :x_ped, :n_item_ped
      attr_writer :v_prod, :q_com, :v_un_com, :q_trib, :v_un_trib, :v_frete

      def v_prod
        "%0.2f" % @v_prod
      end

      def q_com
        "%0.4f" % @q_com
      end

      def v_un_com
        "%0.10f" % @v_un_com
      end

      def q_trib
        "%0.4f" % @q_trib
      end

      def v_un_trib
        "%0.10f" % @v_un_trib
      end

      def v_frete
        "%0.2f" % @v_frete
      end
    end
  end
end
