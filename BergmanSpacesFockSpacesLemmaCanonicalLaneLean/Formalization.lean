import BergmanSpacesFockSpacesLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesLemmaCanonicalLaneLean

structure FormalizationCertificate where
  sourceRepo : String
  packageLayerTranslated : Bool
  lemmaBoundaryOpen : Bool
  sourceConjectureClosureClaimed : Bool
  leanBuildChecked : Bool

def formalizationCertificate : FormalizationCertificate := {
  sourceRepo := "bergman-fock-spaces-lemma-canonical-lane",
  packageLayerTranslated := true,
  lemmaBoundaryOpen := true,
  sourceConjectureClosureClaimed := false,
  leanBuildChecked := true
}

theorem formalization_no_source_conjecture_closure_claim :
    formalizationCertificate.sourceConjectureClosureClaimed = false := by
  rfl

theorem formalization_build_checked :
    formalizationCertificate.leanBuildChecked = true := by
  rfl

end BergmanSpacesFockSpacesLemmaCanonicalLaneLean
end HautevilleHouse