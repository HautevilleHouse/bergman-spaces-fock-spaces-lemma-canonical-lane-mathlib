import HautevilleHouse.BergmanFockSpacesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BergmanFockSpacesLemmaCanonicalLaneLean

structure BergmanKernelPackage (O : BergmanFockAdmissibleObject) where
  kernelFunction : O.space → O.space → ℂ
  reproducingProperty : ∀ f : O.space → ℂ, (∀ x, f x = ∫ y, f y * kernelFunction y x dy) → Prop
  analyticInFirst : Prop
  conjugateAnalyticInSecond : Prop
  diagonalPositive : Prop

structure BergmanKernelEvidence (O : BergmanFockAdmissibleObject)
    (K : BergmanKernelPackage O) where
  reproducingPropertyClosed : K.reproducingProperty
  analyticInFirstClosed : K.analyticInFirst
  conjugateAnalyticInSecondClosed : K.conjugateAnalyticInSecond
  diagonalPositiveClosed : K.diagonalPositive

def BergmanKernelClosed (O : BergmanFockAdmissibleObject)
    (K : BergmanKernelPackage O) : Prop :=
  K.reproducingProperty ∧ K.analyticInFirst ∧ K.conjugateAnalyticInSecond ∧ K.diagonalPositive

theorem bergman_kernel_closed_from_evidence (O : BergmanFockAdmissibleObject)
    (K : BergmanKernelPackage O) (E : BergmanKernelEvidence O K) :
    BergmanKernelClosed O K := by
  exact And.intro E.reproducingPropertyClosed
    (And.intro E.analyticInFirstClosed
      (And.intro E.conjugateAnalyticInSecondClosed E.diagonalPositiveClosed))

end BergmanFockSpacesLemmaCanonicalLaneLean
end HautevilleHouse