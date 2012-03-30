module Nfe
  module Template
    class InfNfe < Base
      attr_accessor :id, :ide, :emit, :dets
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
    end
  end
end
