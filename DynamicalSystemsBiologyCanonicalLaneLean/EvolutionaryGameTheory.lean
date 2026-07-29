import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyCanonicalLaneLean

structure EvolutionaryGameTheoryPackage where
  strategySet : Type u
  payoffMatrix : Type v
  replicatorDynamicsEquation : Prop
  evolutionaryStableState : Prop
  nashEquilibriumExistence : Prop
  convergenceAnalysis : Prop

structure EvolutionaryGameTheoryEvidence (E : EvolutionaryGameTheoryPackage) where
  replicatorDynamicsEquationClosed : E.replicatorDynamicsEquation
  evolutionaryStableStateClosed : E.evolutionaryStableState
  nashEquilibriumExistenceClosed : E.nashEquilibriumExistence
  convergenceAnalysisClosed : E.convergenceAnalysis

def EvolutionaryGameTheoryClosed (E : EvolutionaryGameTheoryPackage) : Prop :=
  E.replicatorDynamicsEquation ∧ E.evolutionaryStableState ∧
  E.nashEquilibriumExistence ∧ E.convergenceAnalysis

theorem evolutionary_game_theory_closed_from_evidence
    (E : EvolutionaryGameTheoryPackage) (Ev : EvolutionaryGameTheoryEvidence E) :
    EvolutionaryGameTheoryClosed E := by
  exact And.intro Ev.replicatorDynamicsEquationClosed
    (And.intro Ev.evolutionaryStableStateClosed
      (And.intro Ev.nashEquilibriumExistenceClosed Ev.convergenceAnalysisClosed))

end DynamicalSystemsBiologyCanonicalLaneLean
end HautevilleHouse
