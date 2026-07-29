import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElectricalEngineeringElectricMachinesCanonicalLaneLean.MachineModel

namespace HautevilleHouse
namespace ElectricalEngineeringElectricMachinesCanonicalLaneLean

structure InductionMotorPackage (M : MachineModel) where
  statorResistance : ℝ
  rotorResistance : ℝ
  magnetizingInductance : ℝ
  statorLeakage : ℝ
  rotorLeakage : ℝ
  slipEquation : Prop
  torqueEquation : Prop
  equivalentCircuitClosed : Prop

def InductionMotorPackageClosed {M : MachineModel} (I : InductionMotorPackage M) : Prop :=
  I.slipEquation ∧ I.torqueEquation ∧ I.equivalentCircuitClosed

theorem induction_motor_package_closed {M : MachineModel} (I : InductionMotorPackage M) : InductionMotorPackageClosed I := by
  exact And.intro I.slipEquation (And.intro I.torqueEquation I.equivalentCircuitClosed)

end ElectricalEngineeringElectricMachinesCanonicalLaneLean
end HautevilleHouse