import HautevilleHouse.BergmanFockSpacesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BergmanFockSpacesLemmaCanonicalLaneLean

def BergmanFockWitnessClosed (O : BergmanFockAdmissibleObject) : Prop :=
  O.kernelReproducing ∧ O.holomorphic ∧ O.integrability

structure BergmanFockEvidence (O : BergmanFockAdmissibleObject) where
  kernelReproducingClosed : O.kernelReproducing
  holomorphicClosed : O.holomorphic
  integrabilityClosed : O.integrability

theorem bergman_fock_closed_from_evidence (O : BergmanFockAdmissibleObject)
    (E : BergmanFockEvidence O) : BergmanFockWitnessClosed O := by
  exact And.intro E.kernelReproducingClosed (And.intro E.holomorphicClosed E.integrabilityClosed)

end BergmanFockSpacesLemmaCanonicalLaneLean
end HautevilleHouse