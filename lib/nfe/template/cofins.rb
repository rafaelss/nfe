module Nfe
  module Template
    class Cofins < Base
      attr_writer :cofins_aliq, :cofinsnt

      def cofins_aliq?
        @cofins_aliq.respond_to?(:render)
      end

      def cofins_aliq
        @cofins_aliq.render
      end

      def cofinsnt?
        @cofinsnt.respond_to?(:render)
      end

      def cofinsnt
        @cofinsnt.render
      end
    end
  end
end
