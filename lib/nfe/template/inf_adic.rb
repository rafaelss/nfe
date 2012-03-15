module Nfe
  module Template
    class InfAdic < Base
      attr_accessor :inf_ad_fisco
      attr_writer :obs_cont

      def obs_cont
        @obs_cont.render
      end
    end
  end
end
