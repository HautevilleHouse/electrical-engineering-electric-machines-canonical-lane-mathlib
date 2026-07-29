import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElectricalEngineeringElectricMachinesCanonicalLaneLean.MachineModel

namespace HautevilleHouse
namespace ElectricalEngineeringElectricMachinesCanonicalLaneLean

structure SynchronousMachinePackage (M : MachineModel) where
  fieldCurrent : ℝ
  armatureResistance : ℝ
  synchronousReactance : ℝ
  powerAngleEquation : Prop
  vCurveCharacteristic : Prop
  steadyStateStability : Prop

def SynchronousMachinePackageClosed {M : MachineModel} (S : SynchronousMachinePackage M) : Prop :=
  S.powerAngleEquation ∧ S.vCurveCharacteristic ∧ S.steadyStateStability

theorem synchronous_machine_package_closed {M : MachineModel} (S : SynchronousMachinePackage M) : SynchronousMachinePackageClosed S := by
  exact And.intro S.powerAngleEquation (And.intro S.vCurveCharacteristic S.steadyStateStability)

end ElectricalEngineeringElectricMachinesCanonicalLaneLean
end HautevilleHouse