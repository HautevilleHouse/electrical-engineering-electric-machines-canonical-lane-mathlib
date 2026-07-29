import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringElectricMachinesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ElectricMachineSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ElectricMachineAdmittedObject where
  space : ElectricMachineSpace
  powerRating : Float
  efficiency : Float
  meetsSpecification : Prop
  conclusion : meetsSpecification

structure ElectricMachineEndgameState where
  object : ElectricMachineAdmittedObject

def ElectricMachineWitnessClosed (O : ElectricMachineAdmittedObject) : Prop :=
  O.meetsSpecification

end ElectricalEngineeringElectricMachinesCanonicalLaneLean
end HautevilleHouse