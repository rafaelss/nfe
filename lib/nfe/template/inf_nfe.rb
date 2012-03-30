module Nfe
  module Template
    class InfNfe < Base
      attr_accessor :ide, :emit, :dets
      attr_writer :dest, :total, :transp, :cobr, :inf_adic

      def dest
        @dest.render
      end

      def total
        @total.render
      end

      def transp
        @transp.render
      end

      def cobr
        @cobr.render
      end

      def inf_adic
        @inf_adic.render
      end

      def id
        "NFe".tap do |str|
          str << UFS[emit.ender_emit.uf].to_s
          str << Date.parse(ide.d_emi).strftime("%y%m")
          str << emit.cnpj
          str << "55"
          str << "%03d" % ide.serie
          str << "%09d" % ide.n_nf
          str << ide.tp_emis.to_s
          str << ide.c_nf
          str << digit(str[3..-1]).to_s
        end
      end

      protected

      def digit(nfe_id)
        sum = 0
        nfe_id.each_char do |c|
          [2, 3, 4, 5, 6, 7, 8, 9].each { |n| sum += c.to_i * n }
        end

        rest = sum % 11
        return 0 if rest == 0 || rest == 1
        11 - rest
      end
    end
  end
end
