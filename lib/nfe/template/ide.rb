module Nfe
  module Template
    class Ide < Base
      attr_accessor :nfe_id, :c_nf, :c_uf, :nat_op, :ind_pag, :serie, :n_nf, :d_emi, :tp_nf, :c_mun_fg, :tp_imp, :tp_emis, :tp_amb, :fin_nfe, :proc_emi
      attr_writer :mod

      def mod
        @mod || 55
      end

      def ver_proc
        Nfe::VERSION
      end
    end
  end
end
