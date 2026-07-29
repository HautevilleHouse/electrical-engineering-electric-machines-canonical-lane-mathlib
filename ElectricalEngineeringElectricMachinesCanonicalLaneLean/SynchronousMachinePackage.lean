import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringElectricMachinesCanonicalLaneLean

structure SynchronousMachinePackage where
  powerAngle : Float
  fieldExcitation : Float
  statorInductance : Float
  dampingCoefficient : Float

structure SynchronousMachineEvidence (M : SynchronousMachinePackage) where
  powerAngleClosed : M.powerAngle > 0 ∧ M.powerAngle < π
  fieldExcitationClosed : M.fieldExcitation > 0
  statorInductanceClosed : M.statorInductance > 0
  dampingCoefficientClosed : M.dampingCoefficient ≥ 0

def SynchronousMachineClosed (M : SynchronousMachinePackage) : Prop :=
  (M.powerAngle > 0 ∧ M.powerAngle < π) ∧ M.fieldExcitation > 0 ∧
  M.statorInductance > 0 ∧ M.dampingCoefficient ≥ 0

theorem synchronous_machine_closed_from_evidence (M : SynchronousMachinePackage)
    (E : SynchronousMachineEvidence M) : SynchronousMachineClosed M := by
  exact And.intro E.powerAngleClosed (And.intro E.fieldExcitationClosed
    (And.intro E.statorInductanceClosed E.dampingCoefficientClosed))

end ElectricalEngineeringElectricMachinesCanonicalLaneLean
end HautevilleHouse