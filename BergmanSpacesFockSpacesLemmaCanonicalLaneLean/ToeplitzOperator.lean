import HautevilleHouse.BergmanFockSpacesLemmaCanonicalLaneLean.BergmanKernel

namespace HautevilleHouse
namespace BergmanFockSpacesLemmaCanonicalLaneLean

structure ToeplitzOperatorPackage (O : BergmanFockAdmissibleObject)
    (K : BergmanKernelPackage O) where
  symbol : O.space → ℂ
  toeplitzOperator : (O.space → ℂ) → (O.space → ℂ)
  boundedness : Prop
  compactness : Prop
  spectralProperties : Prop

structure ToeplitzOperatorEvidence (O : BergmanFockAdmissibleObject)
    (K : BergmanKernelPackage O) (T : ToeplitzOperatorPackage O K) where
  boundednessClosed : T.boundedness
  compactnessClosed : T.compactness
  spectralPropertiesClosed : T.spectralProperties

def ToeplitzOperatorClosed (O : BergmanFockAdmissibleObject)
    (K : BergmanKernelPackage O) (T : ToeplitzOperatorPackage O K) : Prop :=
  T.boundedness ∧ T.compactness ∧ T.spectralProperties

theorem toeplitz_operator_closed_from_evidence (O : BergmanFockAdmissibleObject)
    (K : BergmanKernelPackage O) (T : ToeplitzOperatorPackage O K)
    (E : ToeplitzOperatorEvidence O K T) : ToeplitzOperatorClosed O K T := by
  exact And.intro E.boundednessClosed
    (And.intro E.compactnessClosed E.spectralPropertiesClosed)

end BergmanFockSpacesLemmaCanonicalLaneLean
end HautevilleHouse