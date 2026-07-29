import ElectricalEngineeringElectricMachinesCanonicalLaneLean.ElectricMachineAnalyticProof

namespace HautevilleHouse
namespace ElectricalEngineeringElectricMachinesCanonicalLaneLean

structure TorqueAnalyticEvidenceTerms {M : MachineModelPackage}
    (C : TorqueAnalyticCertificate M) where
  electromagneticTorque : C.electromagneticTorque
  reluctanceTorque : C.reluctanceTorque
  torqueRipple : C.torqueRipple
  thermalDerating : C.thermalDerating
  torqueClosed : TorqueProductionClosed M

def TorqueAnalyticCertificate.evidenceTerms {M : MachineModelPackage}
    (C : TorqueAnalyticCertificate M) : TorqueAnalyticEvidenceTerms C :=
  {
    electromagneticTorque := C.electromagneticTorqueClosed
    reluctanceTorque := C.reluctanceTorqueClosed
    torqueRipple := C.torqueRippleClosed
    thermalDerating := C.thermalDeratingClosed
    torqueClosed := torque_production_closed_from_evidence M C.torqueEvidence
  }

structure FluxAnalyticEvidenceTerms {M : MachineModelPackage}
    (C : FluxAnalyticCertificate M) where
  airGapFlux : C.airGapFlux
  leakageFlux : C.leakageFlux
  fluxWeakening : C.fluxWeakening
  saturationEffect : C.saturationEffect
  fluxClosed : FluxLinkageClosed M

def FluxAnalyticCertificate.evidenceTerms {M : MachineModelPackage}
    (C : FluxAnalyticCertificate M) : FluxAnalyticEvidenceTerms C :=
  {
    airGapFlux := C.airGapFluxClosed
    leakageFlux := C.leakageFluxClosed
    fluxWeakening := C.fluxWeakeningClosed
    saturationEffect := C.saturationEffectClosed
    fluxClosed := flux_linkage_closed_from_evidence M C.fluxEvidence
  }

end ElectricalEngineeringElectricMachinesCanonicalLaneLean
end HautevilleHouse