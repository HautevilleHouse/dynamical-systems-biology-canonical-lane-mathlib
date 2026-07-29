import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyCanonicalLaneLean

structure SIRModelPackage where
  transmissionRate : ℝ
  recoveryRate : ℝ
  totalPopulation : ℕ
  parametersPositive : transmissionRate > 0 ∧ recoveryRate > 0 ∧ totalPopulation > 0
  basicReproductiveNumber : ℝ
  reproductiveNumberDefined : basicReproductiveNumber = transmissionRate / recoveryRate

def SIRModelClosed (S : SIRModelPackage) : Prop :=
  S.parametersPositive ∧ S.reproductiveNumberDefined

theorem sir_model_closed (S : SIRModelPackage) : SIRModelClosed S :=
  And.intro S.parametersPositive S.reproductiveNumberDefined

end DynamicalSystemsBiologyCanonicalLaneLean
end HautevilleHouse