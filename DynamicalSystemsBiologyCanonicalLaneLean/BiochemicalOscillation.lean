import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyCanonicalLaneLean

structure BiochemicalOscillationPackage where
  nSpecies : ℕ
  nSpeciesPos : nSpecies > 0
  rateConstants : Type u
  differentialEquations : Prop
  limitCycleExists : Prop
  oscillationStable : Prop

def BiochemicalOscillationClosed (B : BiochemicalOscillationPackage) : Prop :=
  B.limitCycleExists ∧ B.oscillationStable

theorem biochemical_oscillation_closed (B : BiochemicalOscillationPackage) : BiochemicalOscillationClosed B :=
  And.intro B.limitCycleExists B.oscillationStable

end DynamicalSystemsBiologyCanonicalLaneLean
end HautevilleHouse