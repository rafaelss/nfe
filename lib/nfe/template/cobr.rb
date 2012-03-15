module Nfe
  module Template
    class Cobr < Base
      attr_writer :fat, :dup

      def fat
        @fat.render
      end

      def dup
        @dup.render
      end
    end
  end
end
