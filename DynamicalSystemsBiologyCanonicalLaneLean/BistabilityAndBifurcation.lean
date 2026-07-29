import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyCanonicalLaneLean

structure BistabilityAndBifurcationPackage where
  phaseSpace : Type u
  potentialFunction : ℝ → ℝ
  criticalPoints : Set ℝ
  bifurcationParameter : ℝ
  saddleNodeBifurcation : Prop
  hysteresis : Prop

structure BistabilityAndBifurcationEvidence (B : BistabilityAndBifurcationPackage) where
  saddleNodeBifurcationClosed : B.saddleNodeBifurcation
  hysteresisClosed : B.hysteresis
  criticalPointsClassified : B.criticalPoints.Nonempty

def BistabilityAndBifurcationClosed (B : BistabilityAndBifurcationPackage) : Prop :=
  B.saddleNodeBifurcation ∧ B.hysteresis ∧ B.criticalPoints.Nonempty

theorem bistability_and_bifurcation_closed_from_evidence (B : BistabilityAndBifurcationPackage)
    (Ev : BistabilityAndBifurcationEvidence B) : BistabilityAndBifurcationClosed B := by
  exact And.intro Ev.saddleNodeBifurcationClosed
    (And.intro Ev.hysteresisClosed Ev.criticalPointsClassified)

end DynamicalSystemsBiologyCanonicalLaneLean
end HautevilleHouse