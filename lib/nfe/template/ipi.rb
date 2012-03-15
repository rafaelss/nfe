module Nfe
  module Template
    class Ipi < Base
      attr_writer :ipint

      def ipint
        @ipint.render
      end
    end
  end
end
