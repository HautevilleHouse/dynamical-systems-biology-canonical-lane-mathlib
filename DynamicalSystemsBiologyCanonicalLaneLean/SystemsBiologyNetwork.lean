import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyCanonicalLaneLean

structure SystemsBiologyNetworkPackage where
  nodeCount : ℕ
  edgeSet : Set (ℕ × ℕ)
  regulatoryFunction : (ℝ → ℝ) → ℝ
  steadyStateEquations : Prop
  stabilityAnalysis : Prop
  bifurcationDetection : Prop

structure SystemsBiologyNetworkEvidence (S : SystemsBiologyNetworkPackage) where
  steadyStateEquationsClosed : S.steadyStateEquations
  stabilityAnalysisClosed : S.stabilityAnalysis
  bifurcationDetectionClosed : S.bifurcationDetection

def SystemsBiologyNetworkClosed (S : SystemsBiologyNetworkPackage) : Prop :=
  S.steadyStateEquations ∧ S.stabilityAnalysis ∧ S.bifurcationDetection

theorem systems_biology_network_closed_from_evidence (S : SystemsBiologyNetworkPackage)
    (Ev : SystemsBiologyNetworkEvidence S) : SystemsBiologyNetworkClosed S := by
  exact And.intro Ev.steadyStateEquationsClosed
    (And.intro Ev.stabilityAnalysisClosed Ev.bifurcationDetectionClosed)

end DynamicalSystemsBiologyCanonicalLaneLean
end HautevilleHouse