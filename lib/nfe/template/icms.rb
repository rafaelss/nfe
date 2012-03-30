module Nfe
  module Template
    class Icms < Base
      attr_writer :icms00, :icmssn102

      def icms00?
        @icms00.respond_to?(:render)
      end

      def icms00
        @icms00.render
      end

      def icmssn102?
        @icmssn102.respond_to?(:render)
      end

      def icmssn102
        @icmssn102.render
      end
    end
  end
end
