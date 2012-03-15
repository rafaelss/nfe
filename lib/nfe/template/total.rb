module Nfe
  module Template
    class Total < Base
      attr_writer :icms_tot

      def icms_tot
        @icms_tot.render
      end
    end
  end
end
