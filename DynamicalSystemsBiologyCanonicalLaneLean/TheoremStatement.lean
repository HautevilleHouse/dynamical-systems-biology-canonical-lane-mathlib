import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyCanonicalLaneLean

structure DynamicalSystemsBiologyAdmittedObject where
  biologicalSystem : Type
  formalizedModel : Type
  keyEquilibriumResult : Prop
  conclusion : keyEquilibriumResult

def DynamicalSystemsBiologyWitnessClosed (O : DynamicalSystemsBiologyAdmittedObject) : Prop :=
  O.keyEquilibriumResult

theorem biological_admitted_object_conclusion (O : DynamicalSystemsBiologyAdmittedObject) : DynamicalSystemsBiologyWitnessClosed O :=
  O.conclusion

end DynamicalSystemsBiologyCanonicalLaneLean
end HautevilleHouse
