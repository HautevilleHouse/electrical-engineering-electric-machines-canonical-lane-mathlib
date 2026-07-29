import canonicalLaneMathlib.AdmissibleClass
import ElectricalEngineeringElectricMachinesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ElectricalEngineeringElectricMachinesCanonicalLaneLean

structure EquivalentCircuitPackage where
  resistance : Float
  reactance : Float
  voltageEquation : Prop
  currentEquation : Prop
  powerEquation : Prop

structure EquivalentCircuitEvidence (E : EquivalentCircuitPackage) where
  voltageEquationClosed : E.voltageEquation
  currentEquationClosed : E.currentEquation
  powerEquationClosed : E.powerEquation

def EquivalentCircuitClosed (E : EquivalentCircuitPackage) : Prop :=
  E.voltageEquation ∧ E.currentEquation ∧ E.powerEquation

theorem equivalent_circuit_closed_from_evidence (E : EquivalentCircuitPackage)
    (Ev : EquivalentCircuitEvidence E) : EquivalentCircuitClosed E := by
  exact And.intro Ev.voltageEquationClosed
    (And.intro Ev.currentEquationClosed Ev.powerEquationClosed)

end ElectricalEngineeringElectricMachinesCanonicalLaneLean
end HautevilleHouse