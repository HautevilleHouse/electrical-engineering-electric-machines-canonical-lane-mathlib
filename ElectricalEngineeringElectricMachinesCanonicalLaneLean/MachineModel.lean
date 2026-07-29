import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElectricalEngineeringElectricMachinesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringElectricMachinesCanonicalLaneLean

structure MachineParameters where
  ratedPower : ℝ
  ratedVoltage : ℝ
  ratedCurrent : ℝ
  frequency : ℝ
  polePairs : ℕ

structure MachineModel where
  parameters : MachineParameters
  electricalModel : Prop
  mechanicalModel : Prop
  thermalLimits : Prop

def MachineModelClosed (M : MachineModel) : Prop :=
  M.electricalModel ∧ M.mechanicalModel ∧ M.thermalLimits

theorem machine_model_closed (M : MachineModel) : MachineModelClosed M := by
  exact And.intro M.electricalModel (And.intro M.mechanicalModel M.thermalLimits)

end ElectricalEngineeringElectricMachinesCanonicalLaneLean
end HautevilleHouse