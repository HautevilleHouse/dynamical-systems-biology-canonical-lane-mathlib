import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyCanonicalLaneLean

structure LotkaVolterraPackage where
  preyGrowthRate : ℝ
  predationRate : ℝ
  predatorEfficiency : ℝ
  predatorDeathRate : ℝ
  parametersPositive : preyGrowthRate > 0 ∧ predationRate > 0 ∧ predatorEfficiency > 0 ∧ predatorDeathRate > 0
  equilibriumState : ℝ × ℝ
  equilibriumExists : equilibriumState.1 > 0 ∧ equilibriumState.2 > 0

def LotkaVolterraClosed (L : LotkaVolterraPackage) : Prop :=
  L.parametersPositive ∧ L.equilibriumExists

theorem lotka_volterra_closed (L : LotkaVolterraPackage) : LotkaVolterraClosed L :=
  And.intro L.parametersPositive L.equilibriumExists

end DynamicalSystemsBiologyCanonicalLaneLean
end HautevilleHouse