module Nfe
  module Template
    class Root < Base
      attr_writer :inf_nfe

      def inf_nfe
        @inf_nfe.render
      end
    end
  end
end
