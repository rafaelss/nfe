module Nfe
  module Template
    class InfAdic < Base
      attr_accessor :inf_ad_fisco
      attr_writer :obs_cont

      def obs_cont
        @obs_cont.render
      end

      def inf_ad_fisco?
        inf_ad_fisco && !inf_ad_fisco.empty?
      end
    end
  end
end
