module Nfe
  module Template
    class Emit < Base
      attr_accessor :cnpj, :x_nome, :x_fant, :ie, :im, :cnae, :crt
      attr_writer :ender_emit

      def ender_emit
        @ender_emit.render
      end
    end
  end
end
