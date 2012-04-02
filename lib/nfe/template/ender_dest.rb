module Nfe
  module Template
    class EnderDest < Base
      attr_accessor :x_lgr, :nro, :x_bairro, :c_mun, :x_mun, :uf, :c_pais, :x_pais, :fone
      attr_reader :cep

      def cep=(value)
        @cep = value.gsub(/[^0-9]+/, "") if value.respond_to?(:gsub)
      end
    end
  end
end
