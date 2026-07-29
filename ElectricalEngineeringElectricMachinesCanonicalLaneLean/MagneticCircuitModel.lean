import canonicalLaneMathlib.AdmissibleClass
import ElectricalEngineeringElectricMachinesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ElectricalEngineeringElectricMachinesCanonicalLaneLean

structure MagneticCircuitPackage where
  flux : Float
  mmf : Float
  reluctance : Float
  fluxLawful : Prop
  mmfLawful : Prop
  reluctanceLawful : Prop

structure MagneticCircuitEvidence (M : MagneticCircuitPackage) where
  fluxLawfulClosed : M.fluxLawful
  mmfLawfulClosed : M.mmfLawful
  reluctanceLawfulClosed : M.reluctanceLawful

def MagneticCircuitClosed (M : MagneticCircuitPackage) : Prop :=
  M.fluxLawful ∧ M.mmfLawful ∧ M.reluctanceLawful

theorem magnetic_circuit_closed_from_evidence (M : MagneticCircuitPackage)
    (E : MagneticCircuitEvidence M) : MagneticCircuitClosed M := by
  exact And.intro E.fluxLawfulClosed
    (And.intro E.mmfLawfulClosed E.reluctanceLawfulClosed)

end ElectricalEngineeringElectricMachinesCanonicalLaneLean
end HautevilleHouse