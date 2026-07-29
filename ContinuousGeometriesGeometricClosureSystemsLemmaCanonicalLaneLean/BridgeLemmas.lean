import canonicalLaneMathlib.AdmissibleClass
import ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean

def bridgeClosed (L : Type u) [SemilatticeSup L] [OrderTop L] (A : AdmissibleClass L) : Prop :=
  A.lemmaEvidence.lemmaStatementClosed

theorem bridge_from_admissible_class (L : Type u) [SemilatticeSup L] [OrderTop L] (A : AdmissibleClass L) :
    bridgeClosed L A := by
  exact A.lemmaEvidence.lemmaStatementClosed

end ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean
end HautevilleHouse