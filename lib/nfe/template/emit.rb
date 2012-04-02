module Nfe
  module Template
    class Emit < Base
      attr_accessor :x_nome, :x_fant, :ie, :im, :cnae, :crt, :ender_emit
      attr_reader :cnpj

      def cnpj=(value)
        @cnpj = value.gsub(/[^0-9]+/, "") if value.respond_to?(:gsub)
      end

      def im?
        im && !im.empty?
      end

      def cnae?
        cnae && !cnae.empty?
      end
    end
  end
end
