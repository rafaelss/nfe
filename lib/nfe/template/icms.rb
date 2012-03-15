module Nfe
  module Template
    class Icms < Base
      attr_writer :icms00

      def icms00
        @icms00.render
      end
    end
  end
end
