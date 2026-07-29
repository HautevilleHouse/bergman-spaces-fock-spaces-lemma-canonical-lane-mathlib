import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanFockSpacesLemma.AdmissibleClass
import HautevilleHouse.BergmanFockSpacesLemma.BergmanSpace
import HautevilleHouse.BergmanFockSpacesLemma.FockSpace

namespace HautevilleHouse
namespace BergmanFockSpacesLemma

structure BergmanFockBridgePackage where
  bergman : BergmanSpacePackage
  fock : FockSpacePackage
  isomorphismMap : (bergan.domain → ℂ) → (fock.domain → ℂ)
  isIsometric : Prop
  preservesReproducingKernel : Prop
  majorizes : Prop
  lemmaStatement : Prop

structure BergmanFockBridgeEvidence (B : BergmanFockBridgePackage) where
  isIsometricClosed : B.isIsometric
  preservesReproducingKernelClosed : B.preservesReproducingKernel
  majorizesClosed : B.majorizes
  lemmaStatementClosed : B.lemmaStatement

def BergmanFockBridgeClosed (B : BergmanFockBridgePackage) : Prop :=
  B.isIsometric ∧ B.preservesReproducingKernel ∧ B.majorizes ∧ B.lemmaStatement

theorem bergman_fock_bridge_closed_from_evidence (B : BergmanFockBridgePackage) (E : BergmanFockBridgeEvidence B) : BergmanFockBridgeClosed B := by
  exact And.intro E.isIsometricClosed (And.intro E.preservesReproducingKernelClosed (And.intro E.majorizesClosed E.lemmaStatementClosed))

end BergmanFockSpacesLemma
end HautevilleHouse