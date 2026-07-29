import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "bergman-fock",
    theoremName := "Bergman-Fock Decomposition",
    theoremObject := "BergmanFockAdmittedObject",
    classicalBoundary := "classical boundary carried",
    manifoldConstrainedStatement := "constrained via admissible class",
    certificateLane := "constrained",
    carriedRemainder := "remainder tracked"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "bergman-fock" := by
  rfl

end BergmanSpacesFockSpacesLemmaCanonicalLaneLean
end HautevilleHouse