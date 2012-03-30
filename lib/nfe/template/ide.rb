module Nfe
  module Template
    class Ide < Base
      attr_accessor :nfe_id, :c_nf, :c_uf, :nat_op, :ind_pag, :serie, :n_nf, :d_emi, :tp_nf, :c_mun_fg, :tp_imp, :tp_emis, :tp_amb, :fin_nfe, :proc_emi
      attr_writer :mod

      def mod
        @mod || 55
      end

      def c_dv
        sum = 0
        nfe_id.each_char do |c|
          [2, 3, 4, 5, 6, 7, 8, 9].each { |n| sum += c.to_i * n }
        end

        rest = sum % 11
        return 0 if rest == 0 || rest == 1
        11 - rest
      end

      def ver_proc
        Nfe::VERSION
      end
    end
  end
end
