import ElectricalEngineeringElectricMachinesCanonicalLaneLean.PerelmanEntropy

namespace HautevilleHouse
namespace ElectricalEngineeringElectricMachinesCanonicalLaneLean

structure SaturationPackage {G : AirGapFluxPackage} where
  bhCurveModel : Prop
  saturationFactor : Prop
  fluxDensityLimit : Prop

structure SaturationEvidence {G : AirGapFluxPackage} (S : SaturationPackage G) where
  bhCurveModelClosed : S.bhCurveModel
  saturationFactorClosed : S.saturationFactor
  fluxDensityLimitClosed : S.fluxDensityLimit

def SaturationClosed {G : AirGapFluxPackage} (S : SaturationPackage G) : Prop :=
  S.bhCurveModel ∧ S.saturationFactor ∧ S.fluxDensityLimit

theorem saturation_closed_from_evidence
    {G : AirGapFluxPackage} (S : SaturationPackage G) (E : SaturationEvidence S) :
    SaturationClosed S := by
  exact And.intro E.bhCurveModelClosed (And.intro E.saturationFactorClosed E.fluxDensityLimitClosed)

end ElectricalEngineeringElectricMachinesCanonicalLaneLean
end HautevilleHouse