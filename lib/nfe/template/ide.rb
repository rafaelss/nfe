module Nfe
  module Template
    class Ide < Base
      attr_accessor :nfe_id, :c_uf, :nat_op, :ind_pag, :serie, :n_nf, :d_emi, :tp_nf, :c_mun_fg, :tp_imp, :tp_emis, :tp_amb, :fin_nfe, :proc_emi
      attr_writer :mod

      def mod
        @mod || 55
      end

      def c_nf
        @c_nf ||= rand(10 ** 8).to_s
      end

      def c_dv
        @c_dv ||= begin
          multipliers = [2, 3, 4, 5, 6, 7, 8, 9]
          i = 42
          sum = 0
          loop do
            break if i == 0
            0.upto(multipliers.size - 1) do |m|
              sum += nfe_id[i].to_i * multipliers[m];

              break 2 if i == 0
              i -= 1
            end
          end
          rest = sum % 11;
          return 0 if [0, 1].include?(rest)
          11 - rest
        end
      end

      def ver_proc
        Nfe::VERSION
      end
    end
  end
end
