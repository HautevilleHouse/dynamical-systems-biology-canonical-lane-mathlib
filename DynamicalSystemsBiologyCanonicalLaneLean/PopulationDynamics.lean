import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyCanonicalLaneLean

structure PopulationDynamicsPackage where
  speciesCount : Nat
  growthRateVector : Type u
  interactionMatrix : Type v
  carryingCapacity : Type w
  logisticEquationSet : Prop
  equilibriumExistence : Prop
  stabilityAnalysis : Prop

structure PopulationDynamicsEvidence (P : PopulationDynamicsPackage) where
  logisticEquationSetClosed : P.logisticEquationSet
  equilibriumExistenceClosed : P.equilibriumExistence
  stabilityAnalysisClosed : P.stabilityAnalysis

def PopulationDynamicsClosed (P : PopulationDynamicsPackage) : Prop :=
  P.logisticEquationSet ∧ P.equilibriumExistence ∧ P.stabilityAnalysis

theorem population_dynamics_closed_from_evidence (P : PopulationDynamicsPackage)
    (E : PopulationDynamicsEvidence P) : PopulationDynamicsClosed P := by
  exact And.intro E.logisticEquationSetClosed
    (And.intro E.equilibriumExistenceClosed E.stabilityAnalysisClosed)

end DynamicalSystemsBiologyCanonicalLaneLean
end HautevilleHouse
