import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringElectricMachinesCanonicalLaneLean

structure InductionMotorPackage where
  slip : Float
  statorResistance : Float
  rotorResistance : Float
  magnetizingInductance : Float

structure InductionMotorEvidence (M : InductionMotorPackage) where
  slipClosed : M.slip > 0 ∧ M.slip < 1
  statorResistanceClosed : M.statorResistance > 0
  rotorResistanceClosed : M.rotorResistance > 0
  magnetizingInductanceClosed : M.magnetizingInductance > 0

def InductionMotorClosed (M : InductionMotorPackage) : Prop :=
  (M.slip > 0 ∧ M.slip < 1) ∧ M.statorResistance > 0 ∧ M.rotorResistance > 0 ∧ M.magnetizingInductance > 0

theorem induction_motor_closed_from_evidence (M : InductionMotorPackage)
    (E : InductionMotorEvidence M) : InductionMotorClosed M := by
  exact And.intro E.slipClosed (And.intro E.statorResistanceClosed
    (And.intro E.rotorResistanceClosed E.magnetizingInductanceClosed))

end ElectricalEngineeringElectricMachinesCanonicalLaneLean
end HautevilleHouse