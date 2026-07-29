import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyCanonicalLaneLean

structure EpidemiologyModelsPackage where
  compartments : Type u
  transmissionRates : Type v
  sirEquations : Prop
  basicReproductionNumber : Prop
  endemicEquilibrium : Prop

structure EpidemiologyModelsEvidence (E : EpidemiologyModelsPackage) where
  sirEquationsClosed : E.sirEquations
  basicReproductionNumberClosed : E.basicReproductionNumber
  endemicEquilibriumClosed : E.endemicEquilibrium

def EpidemiologyModelsClosed (E : EpidemiologyModelsPackage) : Prop :=
  E.sirEquations ∧ E.basicReproductionNumber ∧ E.endemicEquilibrium

theorem epidemiology_models_closed_from_evidence (E : EpidemiologyModelsPackage)
    (Ev : EpidemiologyModelsEvidence E) : EpidemiologyModelsClosed E := by
  exact And.intro Ev.sirEquationsClosed
    (And.intro Ev.basicReproductionNumberClosed Ev.endemicEquilibriumClosed)

end DynamicalSystemsBiologyCanonicalLaneLean
end HautevilleHouse