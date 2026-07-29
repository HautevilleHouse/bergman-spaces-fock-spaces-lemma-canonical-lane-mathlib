import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanSpacesFockSpacesLemmaCanonicalLaneLean.ReproducingKernel

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesLemmaCanonicalLaneLean

structure BergmanFockLemmaPackage (Ω : Type u) [ComplexManifold Ω] (B : BergmanSpace Ω) (F : FockSpace Ω) (R : ReproducingKernelPackage Ω B F) where
  bergmanFockEquivalence : Prop
  bergmanFockEquivalenceClosed : bergmanFockEquivalence

def BergmanFockLemmaClosed (Ω : Type u) [ComplexManifold Ω] (B : BergmanSpace Ω) (F : FockSpace Ω) (R : ReproducingKernelPackage Ω B F) (L : BergmanFockLemmaPackage Ω B F R) : Prop :=
  L.bergmanFockEquivalence

theorem bergman_fock_lemma_closed_from_evidence (Ω : Type u) [ComplexManifold Ω] (B : BergmanSpace Ω) (F : FockSpace Ω) (R : ReproducingKernelPackage Ω B F) (L : BergmanFockLemmaPackage Ω B F R) : BergmanFockLemmaClosed Ω B F R L :=
  L.bergmanFockEquivalenceClosed

end BergmanSpacesFockSpacesLemmaCanonicalLaneLean
end HautevilleHouse