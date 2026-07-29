import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyCanonicalLaneLean

structure SystemsBiologyPackage where
  networkTopology : Type u
  reactionKinetics : Type v
  massActionDynamics : Prop
  steadyStateAnalysis : Prop
  sensitivityAnalysis : Prop

structure SystemsBiologyEvidence (S : SystemsBiologyPackage) where
  massActionDynamicsClosed : S.massActionDynamics
  steadyStateAnalysisClosed : S.steadyStateAnalysis
  sensitivityAnalysisClosed : S.sensitivityAnalysis

def SystemsBiologyClosed (S : SystemsBiologyPackage) : Prop :=
  S.massActionDynamics ∧ S.steadyStateAnalysis ∧ S.sensitivityAnalysis

theorem systems_biology_closed_from_evidence (S : SystemsBiologyPackage)
    (E : SystemsBiologyEvidence S) : SystemsBiologyClosed S := by
  exact And.intro E.massActionDynamicsClosed
    (And.intro E.steadyStateAnalysisClosed E.sensitivityAnalysisClosed)

end DynamicalSystemsBiologyCanonicalLaneLean
end HautevilleHouse