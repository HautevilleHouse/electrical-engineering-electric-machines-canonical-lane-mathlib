import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringElectricMachinesCanonicalLaneLean

structure ElectricalDrivesControlPackage where
  controlMethod : String
  speedRegulation : Float
  torqueControlAccuracy : Float
  responseTime : Float

structure ElectricalDrivesControlEvidence (D : ElectricalDrivesControlPackage) where
  controlMethodClosed : D.controlMethod ≠ ""
  speedRegulationClosed : D.speedRegulation > 0
  torqueControlAccuracyClosed : D.torqueControlAccuracy > 0
  responseTimeClosed : D.responseTime > 0

def ElectricalDrivesControlClosed (D : ElectricalDrivesControlPackage) : Prop :=
  D.controlMethod ≠ "" ∧ D.speedRegulation > 0 ∧ D.torqueControlAccuracy > 0 ∧ D.responseTime > 0

theorem electrical_drives_control_closed_from_evidence (D : ElectricalDrivesControlPackage)
    (E : ElectricalDrivesControlEvidence D) : ElectricalDrivesControlClosed D := by
  exact And.intro E.controlMethodClosed (And.intro E.speedRegulationClosed
    (And.intro E.torqueControlAccuracyClosed E.responseTimeClosed))

end ElectricalEngineeringElectricMachinesCanonicalLaneLean
end HautevilleHouse