module Nfe
  module Template
    class EnderEmit < Base
      attr_accessor :x_lgr, :nro, :x_cpl, :c_mun, :x_mun, :uf, :c_pais, :x_pais, :fone
      attr_reader :x_bairro, :cep

      def x_bairro=(value)
        @x_bairro = value.strip if value
      end

      def cep=(value)
        @cep = value.gsub(/[^0-9]+/, "") if value.respond_to?(:gsub)
      end
    end
  end
end
