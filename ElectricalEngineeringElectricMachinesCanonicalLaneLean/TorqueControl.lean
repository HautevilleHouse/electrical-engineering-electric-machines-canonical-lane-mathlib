import ElectricalEngineeringElectricMachinesCanonicalLaneLean.MagneticCircuit

namespace HautevilleHouse
namespace ElectricalEngineeringElectricMachinesCanonicalLaneLean

structure TorqueControlPackage where
  torqueEquation : Prop
  fieldOrientedControl : Prop
  maximumTorquePerAmpere : Prop
  fluxWeakening : Prop

structure TorqueControlEvidence (T : TorqueControlPackage) where
  torqueEquationClosed : T.torqueEquation
  fieldOrientedControlClosed : T.fieldOrientedControl
  maximumTorquePerAmpereClosed : T.maximumTorquePerAmpere
  fluxWeakeningClosed : T.fluxWeakening

def TorqueControlClosed (T : TorqueControlPackage) : Prop :=
  T.torqueEquation ∧ T.fieldOrientedControl ∧ T.maximumTorquePerAmpere ∧ T.fluxWeakening

theorem torque_control_closed_from_evidence
    (T : TorqueControlPackage) (E : TorqueControlEvidence T) :
    TorqueControlClosed T := by
  exact And.intro E.torqueEquationClosed
    (And.intro E.fieldOrientedControlClosed
      (And.intro E.maximumTorquePerAmpereClosed E.fluxWeakeningClosed))

end ElectricalEngineeringElectricMachinesCanonicalLaneLean
end HautevilleHouse