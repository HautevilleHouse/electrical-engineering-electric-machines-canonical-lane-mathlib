import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringElectricMachinesCanonicalLaneLean

structure ElectricMachineObject where
  machineType : String
  ratedPower : Float
  efficiencyClass : String
  conclusion : machineType ≠ ""

structure AdmissibleClass where
  object : ElectricMachineObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ElectricMachineWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ElectricalEngineeringElectricMachinesCanonicalLaneLean
end HautevilleHouse