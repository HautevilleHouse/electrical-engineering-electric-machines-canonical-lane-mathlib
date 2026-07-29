import ElectricalEngineeringElectricMachinesCanonicalLaneLean.MagneticCircuit
import ElectricalEngineeringElectricMachinesCanonicalLaneLean.TorqueControl

namespace HautevilleHouse
namespace ElectricalEngineeringElectricMachinesCanonicalLaneLean

structure ElectricMachineFoundation where
  magneticCircuit : MagneticCircuitPackage
  magneticCircuitEvidence : MagneticCircuitEvidence magneticCircuit
  torqueControl : TorqueControlPackage
  torqueControlEvidence : TorqueControlEvidence torqueControl
  dcMotor : DCMotorPackage torqueControl
  dcMotorEvidence : DCMotorEvidence dcMotor

def ElectricMachineFoundationClosed (A : ElectricMachineFoundation) : Prop :=
  MagneticCircuitClosed A.magneticCircuit ∧
  TorqueControlClosed A.torqueControl ∧
  DCMotorClosed A.dcMotor

theorem electric_machine_foundation_closed_from_evidence
    (A : ElectricMachineFoundation) :
    ElectricMachineFoundationClosed A := by
  exact And.intro (magnetic_circuit_closed_from_evidence A.magneticCircuit A.magneticCircuitEvidence)
    (And.intro (torque_control_closed_from_evidence A.torqueControl A.torqueControlEvidence)
      (dc_motor_closed_from_evidence A.dcMotor A.dcMotorEvidence))

end ElectricalEngineeringElectricMachinesCanonicalLaneLean
end HautevilleHouse