import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanSpacesFockSpacesLemmaCanonicalLaneLean.BergmanFockAdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesLemmaCanonicalLaneLean

def BergmanFockWitnessClosed (O : BergmanFockAdmittedObject) : Prop :=
  O.lemmaStatement

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BergmanFockWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end BergmanSpacesFockSpacesLemmaCanonicalLaneLean
end HautevilleHouse
