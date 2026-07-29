import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyCanonicalLaneLean

structure BifurcationPackage where
  parameterSpace : Type u
  stateSpace : Type v
  vectorField : parameterSpace → stateSpace → stateSpace
  equilibriumCurve : Prop
  bifurcationPoints : Prop
  stabilityChange : Prop

structure BifurcationEvidence (B : BifurcationPackage) where
  equilibriumCurveClosed : B.equilibriumCurve
  bifurcationPointsClosed : B.bifurcationPoints
  stabilityChangeClosed : B.stabilityChange

def BifurcationClosed (B : BifurcationPackage) : Prop :=
  B.equilibriumCurve ∧ B.bifurcationPoints ∧ B.stabilityChange

theorem bifurcation_closed_from_evidence (B : BifurcationPackage)
    (E : BifurcationEvidence B) : BifurcationClosed B := by
  exact And.intro E.equilibriumCurveClosed
    (And.intro E.bifurcationPointsClosed E.stabilityChangeClosed)

end DynamicalSystemsBiologyCanonicalLaneLean
end HautevilleHouse