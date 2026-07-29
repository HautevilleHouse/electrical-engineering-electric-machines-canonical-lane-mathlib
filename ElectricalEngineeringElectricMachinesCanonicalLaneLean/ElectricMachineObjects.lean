import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringElectricMachinesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ElectricMachineSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ElectricMachineAdmittedObject where
  machine : ElectricMachineSpace
  ratedPower : Prop
  ratedVoltage : Prop
  efficiencyTarget : Prop
  conclusion : efficiencyTarget

structure ElectricMachineEndgameState where
  object : ElectricMachineAdmittedObject

def ElectricMachineWitnessClosed (O : ElectricMachineAdmittedObject) : Prop :=
  O.efficiencyTarget

end ElectricalEngineeringElectricMachinesCanonicalLaneLean
end HautevilleHouse