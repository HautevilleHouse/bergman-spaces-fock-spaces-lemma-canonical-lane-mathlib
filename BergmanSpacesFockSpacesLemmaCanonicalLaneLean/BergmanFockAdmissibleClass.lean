import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesLemmaCanonicalLaneLean

structure BergmanFockAdmittedObject where
  domain : Type u
  measure : Type v
  bergmanSpace : Type w
  fockSpace : Type x
  lemmaStatement : Prop
  conclusion : lemmaStatement

structure AdmissibleClass where
  object : BergmanFockAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BergmanFockWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BergmanSpacesFockSpacesLemmaCanonicalLaneLean
end HautevilleHouse
