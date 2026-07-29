import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyCanonicalLaneLean

structure MetabolicFluxAnalysisPackage where
  nReactions : ℕ
  nMetabolites : ℕ
  stoichiometricMatrix : Type u
  fluxBalanceEquation : Prop
  steadyStateFluxSet : Set (Vector ℝ nReactions)
  steadyStateNonempty : steadyStateFluxSet.Nonempty

def MetabolicFluxAnalysisClosed (M : MetabolicFluxAnalysisPackage) : Prop :=
  M.fluxBalanceEquation ∧ M.steadyStateNonempty

theorem metabolic_flux_analysis_closed (M : MetabolicFluxAnalysisPackage) : MetabolicFluxAnalysisClosed M :=
  And.intro M.fluxBalanceEquation M.steadyStateNonempty

end DynamicalSystemsBiologyCanonicalLaneLean
end HautevilleHouse