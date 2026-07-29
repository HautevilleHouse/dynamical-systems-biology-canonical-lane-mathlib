import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyCanonicalLaneLean

structure SystemsBiologyNetworkPackage where
  nodes : Type u
  edges : nodes → nodes → Prop
  dynamics : nodes → ℝ
  interactionFunctions : nodes → nodes → (ℝ → ℝ → ℝ)
  networkDefined : Prop
  steadyStateExistence : Prop

structure SystemsBiologyNetworkEvidence (N : SystemsBiologyNetworkPackage) where
  networkDefinedClosed : N.networkDefined
  steadyStateExistenceClosed : N.steadyStateExistence

def SystemsBiologyNetworkClosed (N : SystemsBiologyNetworkPackage) : Prop :=
  N.networkDefined ∧ N.steadyStateExistence

theorem systems_biology_network_closed_from_evidence (N : SystemsBiologyNetworkPackage)
    (E : SystemsBiologyNetworkEvidence N) : SystemsBiologyNetworkClosed N := by
  exact And.intro E.networkDefinedClosed E.steadyStateExistenceClosed

end DynamicalSystemsBiologyCanonicalLaneLean
end HautevilleHouse