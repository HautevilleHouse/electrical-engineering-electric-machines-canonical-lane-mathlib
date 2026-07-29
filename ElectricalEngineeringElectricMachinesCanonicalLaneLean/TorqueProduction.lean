import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElectricalEngineeringElectricMachinesCanonicalLaneLean.MachineModel

namespace HautevilleHouse
namespace ElectricalEngineeringElectricMachinesCanonicalLaneLean

structure TorqueProductionPackage (M : MachineModel) where
  electromagneticTorque : Prop
  loadTorqueBalance : Prop
  speedRegulation : Prop
  torqueRippleConstraint : Prop
  efficiencyConstraint : Prop

def TorqueProductionPackageClosed {M : MachineModel} (T : TorqueProductionPackage M) : Prop :=
  T.electromagneticTorque ∧ T.loadTorqueBalance ∧ T.speedRegulation ∧ T.torqueRippleConstraint ∧ T.efficiencyConstraint

theorem torque_production_package_closed {M : MachineModel} (T : TorqueProductionPackage M) : TorqueProductionPackageClosed T := by
  exact And.intro T.electromagneticTorque (And.intro T.loadTorqueBalance (And.intro T.speedRegulation (And.intro T.torqueRippleConstraint T.efficiencyConstraint)))

end ElectricalEngineeringElectricMachinesCanonicalLaneLean
end HautevilleHouse