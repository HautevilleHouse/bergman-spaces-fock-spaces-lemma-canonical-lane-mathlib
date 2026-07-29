import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanSpacesFockSpacesLemmaCanonicalLaneLean.BergmanFockBridgeLemmas
import HautevilleHouse.BergmanSpacesFockSpacesLemmaCanonicalLaneLean.BergmanFockGateLemmas

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesLemmaCanonicalLaneLean

def ConstrainedBergmanFockClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bergman_fock_endgame (A : AdmissibleClass) : ConstrainedBergmanFockClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BergmanSpacesFockSpacesLemmaCanonicalLaneLean
end HautevilleHouse
