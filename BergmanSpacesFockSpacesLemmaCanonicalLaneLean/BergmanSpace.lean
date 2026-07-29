import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanFockSpacesLemma.AdmissibleClass

namespace HautevilleHouse
namespace BergmanFockSpacesLemma

structure BergmanSpacePackage where
  domain : Type
  dimension : Nat
  weightFunction : domain → ℝ
  holomorphicFunctions : Set (domain → ℂ)
  squareIntegrable : Prop
  reproducingKernelExists : Prop
  completeness : Prop
  closedSubspaceProperty : Prop

structure BergmanSpaceEvidence (B : BergmanSpacePackage) where
  squareIntegrableClosed : B.squareIntegrable
  reproducingKernelExistsClosed : B.reproducingKernelExists
  completenessClosed : B.completeness
  closedSubspacePropertyClosed : B.closedSubspaceProperty

def BergmanSpaceClosed (B : BergmanSpacePackage) : Prop :=
  B.squareIntegrable ∧ B.reproducingKernelExists ∧ B.completeness ∧ B.closedSubspaceProperty

theorem bergman_space_closed_from_evidence (B : BergmanSpacePackage) (E : BergmanSpaceEvidence B) : BergmanSpaceClosed B := by
  exact And.intro E.squareIntegrableClosed (And.intro E.reproducingKernelExistsClosed (And.intro E.completenessClosed E.closedSubspacePropertyClosed))

end BergmanFockSpacesLemma
end HautevilleHouse