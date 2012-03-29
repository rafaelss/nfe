module Nfe
  module Template
    class Dest < Base
      attr_accessor :cnpj, :cpf, :x_nome, :ie, :email
      attr_writer :ender_dest

      def cnpj?
        cnpj && !cnpj.empty?
      end

      def cpf?
        cpf && !cpf.empty?
      end

      def ender_dest
        @ender_dest.render
      end
    end
  end
end
