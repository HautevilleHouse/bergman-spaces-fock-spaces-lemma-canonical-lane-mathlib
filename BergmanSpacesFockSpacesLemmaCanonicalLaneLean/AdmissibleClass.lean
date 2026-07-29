import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanFockSpacesLemma

structure BergmanAdmittedObject where
  domain : Type
  dimension : Nat
  weightFunction : domain → ℝ
  bergmanSpace : Set (domain → ℂ)
  isBergmanSpace : Prop
  fockSpace : Set (domain → ℂ)
  isFockSpace : Prop
  conclusion : Prop

def BergmanWitnessClosed (O : BergmanAdmittedObject) : Prop :=
  O.conclusion

structure AdmissibleClass where
  object : BergmanAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BergmanWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BergmanFockSpacesLemma
end HautevilleHouse