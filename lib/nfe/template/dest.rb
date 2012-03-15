module Nfe
  module Template
    class Dest < Base
      attr_accessor :cnpj, :x_nome, :ie, :email
      attr_writer :ender_dest

      def ender_dest
        @ender_dest.render
      end
    end
  end
end
