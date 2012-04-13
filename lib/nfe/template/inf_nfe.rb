module Nfe
  module Template
    class InfNfe < Base
      attr_accessor :ide, :emit, :dets
      attr_writer :dest, :total, :transp, :cobr, :inf_adic

      def c_dv
        ide.nfe_id = id
        ide.c_dv.to_s
      end

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
        @id ||= "".tap do |str|
          str << "%02d" % ide.c_uf
          str << Date.parse(ide.d_emi).strftime("%y%m")
          str << emit.cnpj.gsub(/[^0-9]+/, "")
          str << "55"
          str << "%03d" % ide.serie
          str << "%09d" % ide.n_nf
          str << ide.tp_emis.to_s
          str << ide.c_nf
        end
      end
    end
  end
end
