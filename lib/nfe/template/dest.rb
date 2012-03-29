module Nfe
  module Template
    class Dest < Base
      attr_accessor :x_nome, :ie, :email
      attr_reader :cnpj, :cpf
      attr_writer :ender_dest

      def cnpj?
        cnpj && !cnpj.empty?
      end

      def cnpj=(value)
        @cnpj = numeric(value)
      end

      def cpf?
        cpf && !cpf.empty?
      end

      def cpf=(value)
        @cpf = numeric(value)
      end

      def ender_dest
        @ender_dest.render
      end

      private

      def numeric(value)
        value.gsub(/[^0-9]+/, "") if value.respond_to?(:gsub)
      end
    end
  end
end
