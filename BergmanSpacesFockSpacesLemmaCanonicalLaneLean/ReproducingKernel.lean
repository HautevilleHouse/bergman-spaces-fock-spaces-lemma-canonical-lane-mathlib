import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanFockSpacesLemma.AdmissibleClass

namespace HautevilleHouse
namespace BergmanFockSpacesLemma

structure ReproducingKernelPackage where
  domain : Type
  kernelFunction : domain → domain → ℂ
  positiveDefinite : Prop
  reproducingProperty : Prop
  bergmanKernel : Prop
  fockKernel : Prop
  equivalenceUnderTransform : Prop

structure ReproducingKernelEvidence (R : ReproducingKernelPackage) where
  positiveDefiniteClosed : R.positiveDefinite
  reproducingPropertyClosed : R.reproducingProperty
  bergmanKernelClosed : R.bergmanKernel
  fockKernelClosed : R.fockKernel
  equivalenceUnderTransformClosed : R.equivalenceUnderTransform

def ReproducingKernelClosed (R : ReproducingKernelPackage) : Prop :=
  R.positiveDefinite ∧ R.reproducingProperty ∧ R.bergmanKernel ∧ R.fockKernel ∧ R.equivalenceUnderTransform

theorem reproducing_kernel_closed_from_evidence (R : ReproducingKernelPackage) (E : ReproducingKernelEvidence R) : ReproducingKernelClosed R := by
  exact And.intro E.positiveDefiniteClosed (And.intro E.reproducingPropertyClosed (And.intro E.bergmanKernelClosed (And.intro E.fockKernelClosed E.equivalenceUnderTransformClosed)))

end BergmanFockSpacesLemma
end HautevilleHouse