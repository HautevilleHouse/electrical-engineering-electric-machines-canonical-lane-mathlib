import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringElectricMachinesCanonicalLaneLean

structure TorqueSpeedAnalysisPackage where
  torque : Float
  speed : Float
  mechanicalPower : Float
  efficiency : Float

structure TorqueSpeedAnalysisEvidence (T : TorqueSpeedAnalysisPackage) where
  torqueClosed : T.torque > 0
  speedClosed : T.speed > 0
  mechanicalPowerClosed : T.mechanicalPower = T.torque * T.speed
  efficiencyClosed : T.efficiency > 0 ∧ T.efficiency ≤ 1

def TorqueSpeedAnalysisClosed (T : TorqueSpeedAnalysisPackage) : Prop :=
  T.torque > 0 ∧ T.speed > 0 ∧ T.mechanicalPower = T.torque * T.speed ∧
  T.efficiency > 0 ∧ T.efficiency ≤ 1

theorem torque_speed_analysis_closed_from_evidence (T : TorqueSpeedAnalysisPackage)
    (E : TorqueSpeedAnalysisEvidence T) : TorqueSpeedAnalysisClosed T := by
  exact And.intro E.torqueClosed (And.intro E.speedClosed
    (And.intro E.mechanicalPowerClosed E.efficiencyClosed))

end ElectricalEngineeringElectricMachinesCanonicalLaneLean
end HautevilleHouse