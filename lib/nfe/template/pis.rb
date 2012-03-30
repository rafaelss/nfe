module Nfe
  module Template
    class Pis < Base
      attr_writer :pis_aliq, :pisnt

      def pis_aliq?
        @pis_aliq.respond_to?(:render)
      end

      def pis_aliq
        @pis_aliq.render
      end

      def pisnt?
        @pisnt.respond_to?(:render)
      end

      def pisnt
        @pisnt.render
      end
    end
  end
end
