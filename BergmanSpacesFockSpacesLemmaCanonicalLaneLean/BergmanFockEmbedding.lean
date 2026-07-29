import BergmanSpacesFockSpacesLemmaCanonicalLaneLean.BergmanSpace
import BergmanSpacesFockSpacesLemmaCanonicalLaneLean.FockSpace

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesLemmaCanonicalLaneLean

structure BergmanFockEmbedding (B : BergmanSpace) (F : FockSpace) where
  embeddingMap : (B.domain → ℂ) → (F.domain → ℂ)
  isometric : Prop
  boundedness : Prop
  kernelPreservation : B.reproducingKernel → F.reproducingKernel

def BergmanFockEmbeddingClosed (B : BergmanSpace) (F : FockSpace) (E : BergmanFockEmbedding B F) : Prop :=
  E.isometric ∧ E.boundedness ∧ E.kernelPreservation

end BergmanSpacesFockSpacesLemmaCanonicalLaneLean
end HautevilleHouse
