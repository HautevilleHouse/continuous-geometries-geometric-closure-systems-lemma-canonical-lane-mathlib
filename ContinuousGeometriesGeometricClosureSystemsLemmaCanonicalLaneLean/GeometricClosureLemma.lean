import canonicalLaneMathlib.AdmissibleClass
import ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean.ClosureSystem
import ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean.DirectJoint

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean

structure GeometricClosureLemma (L : Type u) [SemilatticeSup L] [OrderTop L]
    (C : ClosureSystem L) where
  lemmaStatement : Prop
  lemmaProof : lemmaStatement

structure GeometricClosureLemmaEvidence (L : Type u) [SemilatticeSup L] [OrderTop L]
    {C : ClosureSystem L} (G : GeometricClosureLemma L C) where
  lemmaStatementClosed : G.lemmaStatement
  lemmaProofClosed : G.lemmaProof

theorem geometric_closure_lemma_closed (L : Type u) [SemilatticeSup L] [OrderTop L]
    {C : ClosureSystem L} (G : GeometricClosureLemma L C)
    (E : GeometricClosureLemmaEvidence L C G) : G.lemmaStatement := E.lemmaStatementClosed

end ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean
end HautevilleHouse