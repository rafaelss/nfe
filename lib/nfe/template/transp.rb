module Nfe
  module Template
    class Transp < Base
      attr_accessor :mod_frete
      attr_writer :transporta, :vol

      def transporta
        @transporta.render
      end

      def vol
        @vol.render
      end
    end
  end
end
