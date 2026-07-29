import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyCanonicalLaneLean

structure DynamicalSystemsBiologyAdmittedObject where
  popDyn : PopulationDynamicsPackage
  gameTheory : EvolutionaryGamePackage
  epidemiology : EpidemiologyPackage
  sysBio : SystemsBiologyPackage
  popDynEvidence : PopulationDynamicsEvidence popDyn
  gameTheoryEvidence : EvolutionaryGameEvidence gameTheory
  epidemiologyEvidence : EpidemiologyEvidence epidemiology
  sysBioEvidence : SystemsBiologyEvidence sysBio

def DynamicalSystemsBiologyWitnessClosed (O : DynamicalSystemsBiologyAdmittedObject) : Prop :=
  PopulationDynamicsClosed O.popDyn ∧ EvolutionaryGameClosed O.gameTheory ∧
  EpidemiologyClosed O.epidemiology ∧ SystemsBiologyClosed O.sysBio

theorem dynamical_systems_biology_witness_closed_from_evidence
    (O : DynamicalSystemsBiologyAdmittedObject) :
    DynamicalSystemsBiologyWitnessClosed O := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ ?_))
  · exact population_dynamics_closed_from_evidence O.popDyn O.popDynEvidence
  · exact evolutionary_game_closed_from_evidence O.gameTheory O.gameTheoryEvidence
  · exact epidemiology_closed_from_evidence O.epidemiology O.epidemiologyEvidence
  · exact systems_biology_closed_from_evidence O.sysBio O.sysBioEvidence

end DynamicalSystemsBiologyCanonicalLaneLean
end HautevilleHouse