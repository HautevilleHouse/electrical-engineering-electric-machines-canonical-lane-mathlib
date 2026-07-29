import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElectricalEngineeringElectricMachinesCanonicalLaneLean.MachineModel

namespace HautevilleHouse
namespace ElectricalEngineeringElectricMachinesCanonicalLaneLean

structure ControlSystemPackage (M : MachineModel) where
  feedbackLoop : Prop
  stabilityCriterion : Prop
  referenceTracking : Prop
  disturbanceRejection : Prop

def ControlSystemPackageClosed {M : MachineModel} (C : ControlSystemPackage M) : Prop :=
  C.feedbackLoop ∧ C.stabilityCriterion ∧ C.referenceTracking ∧ C.disturbanceRejection

theorem control_system_package_closed {M : MachineModel} (C : ControlSystemPackage M) : ControlSystemPackageClosed C := by
  exact And.intro C.feedbackLoop (And.intro C.stabilityCriterion (And.intro C.referenceTracking C.disturbanceRejection))

end ElectricalEngineeringElectricMachinesCanonicalLaneLean
end HautevilleHouse