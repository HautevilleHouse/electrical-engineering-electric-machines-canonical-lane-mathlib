import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringElectricMachinesCanonicalLaneLean

structure MagneticCircuitPackage where
  magneticFlux : Float
  reluctance : Float
  coreLosses : Float
  saturationFactor : Float

structure MagneticCircuitEvidence (M : MagneticCircuitPackage) where
  magneticFluxClosed : M.magneticFlux > 0
  reluctanceClosed : M.reluctance > 0
  coreLossesClosed : M.coreLosses ≥ 0
  saturationFactorClosed : M.saturationFactor ≥ 1

def MagneticCircuitClosed (M : MagneticCircuitPackage) : Prop :=
  M.magneticFlux > 0 ∧ M.reluctance > 0 ∧ M.coreLosses ≥ 0 ∧ M.saturationFactor ≥ 1

theorem magnetic_circuit_closed_from_evidence (M : MagneticCircuitPackage)
    (E : MagneticCircuitEvidence M) : MagneticCircuitClosed M := by
  exact And.intro E.magneticFluxClosed (And.intro E.reluctanceClosed
    (And.intro E.coreLossesClosed E.saturationFactorClosed))

end ElectricalEngineeringElectricMachinesCanonicalLaneLean
end HautevilleHouse