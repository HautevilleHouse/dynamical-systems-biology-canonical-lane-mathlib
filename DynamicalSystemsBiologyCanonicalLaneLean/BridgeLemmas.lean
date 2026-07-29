import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DynamicalSystemsBiologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end DynamicalSystemsBiologyCanonicalLaneLean
end HautevilleHouse
