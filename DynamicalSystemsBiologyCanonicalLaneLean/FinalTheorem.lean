import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsBiologyCanonicalLaneLean.PopulationDynamics
import DynamicalSystemsBiologyCanonicalLaneLean.EvolutionaryGameTheory
import DynamicalSystemsBiologyCanonicalLaneLean.EpidemiologyModels
import DynamicalSystemsBiologyCanonicalLaneLean.SystemsBiologyNetworks
import DynamicalSystemsBiologyCanonicalLaneLean.BifurcationAnalysis

namespace HautevilleHouse
namespace DynamicalSystemsBiologyCanonicalLaneLean

def ConstrainedDSBClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dsb_endgame (A : AdmissibleClass) :
    ConstrainedDSBClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsBiologyCanonicalLaneLean
end HautevilleHouse