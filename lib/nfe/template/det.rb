module Nfe
  module Template
    class Det < Base
      attr_accessor :index, :inf_ad_prod
      attr_writer :prod, :imposto

      def prod
        @prod.render
      end

      def imposto
        @imposto.render
      end
    end
  end
end
