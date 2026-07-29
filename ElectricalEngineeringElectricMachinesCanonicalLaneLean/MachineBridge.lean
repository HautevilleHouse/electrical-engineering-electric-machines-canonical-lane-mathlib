import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElectricalEngineeringElectricMachinesCanonicalLaneLean.ElectricMachineAdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringElectricMachinesCanonicalLaneLean

def bridgeClosed (A : ElectricMachineAdmissibleClass) : Prop :=
  MachineWitnessClosed A.object

theorem bridge_from_admissible_class (A : ElectricMachineAdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : ElectricMachineAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ElectricMachineAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end ElectricalEngineeringElectricMachinesCanonicalLaneLean
end HautevilleHouse