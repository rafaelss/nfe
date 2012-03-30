require "mustache"

module Nfe
  module Template
    class Base < Mustache
      def initialize(*args)
        self.template_path = File.expand_path("../../", __FILE__)
        self.raise_on_context_miss = true
        super
      end
    end

    autoload :Root, "nfe/template/root"
    autoload :Cobr, "nfe/template/cobr"
    autoload :CofinsAliq, "nfe/template/cofins_aliq"
    autoload :Cofins, "nfe/template/cofins"
    autoload :Dest, "nfe/template/dest"
    autoload :Det, "nfe/template/det"
    autoload :EnderDest, "nfe/template/ender_dest"
    autoload :Prod, "nfe/template/prod"
    autoload :Imposto, "nfe/template/imposto"
    autoload :Ide, "nfe/template/ide"
    autoload :Fat, "nfe/template/fat"
    autoload :Dup, "nfe/template/dup"
    autoload :Icms, "nfe/template/icms"
    autoload :Icms00, "nfe/template/icms00"
    autoload :Icmssn102, "nfe/template/icmssn102"
    autoload :Ipi, "nfe/template/ipi"
    autoload :Pis, "nfe/template/pis"
    autoload :Ipint, "nfe/template/ipint"
    autoload :PisAliq, "nfe/template/pis_aliq"
    autoload :InfNfe, "nfe/template/inf_nfe"
    autoload :Emit, "nfe/template/emit"
    autoload :EnderEmit, "nfe/template/ender_emit"
    autoload :Total, "nfe/template/total"
    autoload :Transp, "nfe/template/transp"
    autoload :IcmsTot, "nfe/template/icms_tot"
    autoload :Transporta, "nfe/template/transporta"
    autoload :Vol, "nfe/template/vol"
    autoload :InfAdic, "nfe/template/inf_adic"
    autoload :ObsCont, "nfe/template/obs_cont"

    autoload :Signature, "nfe/template/signature"
  end
end
