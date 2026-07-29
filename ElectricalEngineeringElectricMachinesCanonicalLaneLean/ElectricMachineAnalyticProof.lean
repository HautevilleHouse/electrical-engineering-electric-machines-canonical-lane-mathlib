import ElectricalEngineeringElectricMachinesCanonicalLaneLean.ElectricMachineRoute

namespace HautevilleHouse
namespace ElectricalEngineeringElectricMachinesCanonicalLaneLean

structure TorqueAnalyticCertificate (M : MachineModelPackage) where
  electromagneticTorque : Prop
  reluctanceTorque : Prop
  torqueRipple : Prop
  thermalDerating : Prop
  electromagneticTorqueClosed : electromagneticTorque
  reluctanceTorqueClosed : reluctanceTorque
  torqueRippleClosed : torqueRipple
  thermalDeratingClosed : thermalDerating
  torqueEvidence : TorqueProductionEvidence M

def TorqueAnalyticCertificateClosed {M : MachineModelPackage}
    (C : TorqueAnalyticCertificate M) : Prop :=
  C.electromagneticTorque ∧ C.reluctanceTorque ∧ C.torqueRipple ∧ C.thermalDerating ∧
  TorqueProductionClosed M

theorem torque_analytic_certificate_closed
    {M : MachineModelPackage} (C : TorqueAnalyticCertificate M) :
    TorqueAnalyticCertificateClosed C := by
  exact And.intro C.electromagneticTorqueClosed
    (And.intro C.reluctanceTorqueClosed
      (And.intro C.torqueRippleClosed
        (And.intro C.thermalDeratingClosed
          (torque_production_closed_from_evidence M C.torqueEvidence))))

structure FluxAnalyticCertificate (M : MachineModelPackage) where
  airGapFlux : Prop
  leakageFlux : Prop
  fluxWeakening : Prop
  saturationEffect : Prop
  airGapFluxClosed : airGapFlux
  leakageFluxClosed : leakageFlux
  fluxWeakeningClosed : fluxWeakening
  saturationEffectClosed : saturationEffect
  fluxEvidence : FluxLinkageEvidence M

def FluxAnalyticCertificateClosed {M : MachineModelPackage}
    (C : FluxAnalyticCertificate M) : Prop :=
  C.airGapFlux ∧ C.leakageFlux ∧ C.fluxWeakening ∧ C.saturationEffect ∧
  FluxLinkageClosed M

theorem flux_analytic_certificate_closed
    {M : MachineModelPackage} (C : FluxAnalyticCertificate M) :
    FluxAnalyticCertificateClosed C := by
  exact And.intro C.airGapFluxClosed
    (And.intro C.leakageFluxClosed
      (And.intro C.fluxWeakeningClosed
        (And.intro C.saturationEffectClosed
          (flux_linkage_closed_from_evidence M C.fluxEvidence))))

end ElectricalEngineeringElectricMachinesCanonicalLaneLean
end HautevilleHouse