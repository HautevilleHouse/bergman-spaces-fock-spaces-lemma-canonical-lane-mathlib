import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanFockSpacesLemma.AdmissibleClass

namespace HautevilleHouse
namespace BergmanFockSpacesLemma

structure FockSpacePackage where
  domain : Type
  dimension : Nat
  weightFunction : domain → ℝ
  entireFunctions : Set (domain → ℂ)
  squareIntegrable : Prop
  reproducingKernelExists : Prop
  completeness : Prop
  segalBargmannTransform : Prop

structure FockSpaceEvidence (F : FockSpacePackage) where
  squareIntegrableClosed : F.squareIntegrable
  reproducingKernelExistsClosed : F.reproducingKernelExists
  completenessClosed : F.completeness
  segalBargmannTransformClosed : F.segalBargmannTransform

def FockSpaceClosed (F : FockSpacePackage) : Prop :=
  F.squareIntegrable ∧ F.reproducingKernelExists ∧ F.completeness ∧ F.segalBargmannTransform

theorem fock_space_closed_from_evidence (F : FockSpacePackage) (E : FockSpaceEvidence F) : FockSpaceClosed F := by
  exact And.intro E.squareIntegrableClosed (And.intro E.reproducingKernelExistsClosed (And.intro E.completenessClosed E.segalBargmannTransformClosed))

end BergmanFockSpacesLemma
end HautevilleHouse