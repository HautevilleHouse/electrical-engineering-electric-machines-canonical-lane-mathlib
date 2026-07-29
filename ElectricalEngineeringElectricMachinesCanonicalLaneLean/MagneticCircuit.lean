import ElectricalEngineeringElectricMachinesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringElectricMachinesCanonicalLaneLean

structure MagneticCircuitPackage where
  reluctance : Type u
  fluxLinkage : Type v
  mmfSource : Type w
  linearMagneticModel : Prop
  saturationIncluded : Prop
  leakageFluxModeled : Prop

structure MagneticCircuitEvidence (M : MagneticCircuitPackage) where
  linearMagneticModelClosed : M.linearMagneticModel
  saturationIncludedClosed : M.saturationIncluded
  leakageFluxModeledClosed : M.leakageFluxModeled

def MagneticCircuitClosed (M : MagneticCircuitPackage) : Prop :=
  M.linearMagneticModel ∧ M.saturationIncluded ∧ M.leakageFluxModeled

theorem magnetic_circuit_closed_from_evidence
    (M : MagneticCircuitPackage) (E : MagneticCircuitEvidence M) :
    MagneticCircuitClosed M := by
  exact And.intro E.linearMagneticModelClosed
    (And.intro E.saturationIncludedClosed E.leakageFluxModeledClosed)

end ElectricalEngineeringElectricMachinesCanonicalLaneLean
end HautevilleHouse