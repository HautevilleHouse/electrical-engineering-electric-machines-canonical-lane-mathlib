import ElectricalEngineeringElectricMachinesCanonicalLaneLean.TorqueControl

namespace HautevilleHouse
namespace ElectricalEngineeringElectricMachinesCanonicalLaneLean

structure DCMotorPackage where
  armatureCircuit : Prop
  fieldCircuit : Prop
  mechanicalDynamics : Prop
  backEMF : Prop
  commutationModeled : Prop

structure DCMotorEvidence (D : DCMotorPackage) where
  armatureCircuitClosed : D.armatureCircuit
  fieldCircuitClosed : D.fieldCircuit
  mechanicalDynamicsClosed : D.mechanicalDynamics
  backEMFClosed : D.backEMF
  commutationModeledClosed : D.commutationModeled

def DCMotorClosed (D : DCMotorPackage) : Prop :=
  D.armatureCircuit ∧ D.fieldCircuit ∧ D.mechanicalDynamics ∧ D.backEMF ∧ D.commutationModeled

theorem dc_motor_closed_from_evidence
    (D : DCMotorPackage) (E : DCMotorEvidence D) :
    DCMotorClosed D := by
  exact And.intro E.armatureCircuitClosed
    (And.intro E.fieldCircuitClosed
      (And.intro E.mechanicalDynamicsClosed
        (And.intro E.backEMFClosed E.commutationModeledClosed)))

end ElectricalEngineeringElectricMachinesCanonicalLaneLean
end HautevilleHouse