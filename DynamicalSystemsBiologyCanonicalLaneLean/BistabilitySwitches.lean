import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyCanonicalLaneLean

structure BistabilitySwitchesPackage where
  geneRegulatoryNetwork : Type u
  positiveFeedbackLoops : Type v
  toggleSwitchDynamics : Prop
  hysteresisAnalysis : Prop
  bifurcationDiagram : Prop

structure BistabilitySwitchesEvidence (B : BistabilitySwitchesPackage) where
  toggleSwitchDynamicsClosed : B.toggleSwitchDynamics
  hysteresisAnalysisClosed : B.hysteresisAnalysis
  bifurcationDiagramClosed : B.bifurcationDiagram

def BistabilitySwitchesClosed (B : BistabilitySwitchesPackage) : Prop :=
  B.toggleSwitchDynamics ∧ B.hysteresisAnalysis ∧ B.bifurcationDiagram

theorem bistability_switches_closed_from_evidence (B : BistabilitySwitchesPackage)
    (Ev : BistabilitySwitchesEvidence B) : BistabilitySwitchesClosed B := by
  exact And.intro Ev.toggleSwitchDynamicsClosed
    (And.intro Ev.hysteresisAnalysisClosed Ev.bifurcationDiagramClosed)

end DynamicalSystemsBiologyCanonicalLaneLean
end HautevilleHouse