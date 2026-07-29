import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElectricalEngineeringElectricMachinesCanonicalLaneLean.MachineBridge

namespace HautevilleHouse
namespace ElectricalEngineeringElectricMachinesCanonicalLaneLean

def ConstrainedMachineClosure (A : ElectricMachineAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_machine_endgame (A : ElectricMachineAdmissibleClass) : ConstrainedMachineClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ElectricalEngineeringElectricMachinesCanonicalLaneLean
end HautevilleHouse