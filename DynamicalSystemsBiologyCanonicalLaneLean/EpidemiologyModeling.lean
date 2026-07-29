import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyCanonicalLaneLean

structure EpidemiologyModelingPackage where
  compartmentModel : Type u
  transmissionRate : Type v
  recoveryRate : Type w
  basicReproductionNumber : Prop
  endemicEquilibrium : Prop
  epidemicThreshold : Prop
  vaccinationControl : Prop

structure EpidemiologyModelingEvidence (Ep : EpidemiologyModelingPackage) where
  basicReproductionNumberClosed : Ep.basicReproductionNumber
  endemicEquilibriumClosed : Ep.endemicEquilibrium
  epidemicThresholdClosed : Ep.epidemicThreshold
  vaccinationControlClosed : Ep.vaccinationControl

def EpidemiologyModelingClosed (Ep : EpidemiologyModelingPackage) : Prop :=
  Ep.basicReproductionNumber ∧ Ep.endemicEquilibrium ∧
  Ep.epidemicThreshold ∧ Ep.vaccinationControl

theorem epidemiology_modeling_closed_from_evidence
    (Ep : EpidemiologyModelingPackage) (E : EpidemiologyModelingEvidence Ep) :
    EpidemiologyModelingClosed Ep := by
  exact And.intro E.basicReproductionNumberClosed
    (And.intro E.endemicEquilibriumClosed
      (And.intro E.epidemicThresholdClosed E.vaccinationControlClosed))

end DynamicalSystemsBiologyCanonicalLaneLean
end HautevilleHouse
