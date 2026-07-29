import canonicalLaneMathlib.AdmissibleClass
import ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean

def gateClosed (L : Type u) [SemilatticeSup L] [OrderTop L] (A : AdmissibleClass L) : Prop :=
  A.directJoint.independent ∧ A.directJoint.joinClosure

theorem gate_from_admissible_class (L : Type u) [SemilatticeSup L] [OrderTop L] (A : AdmissibleClass L) :
    gateClosed L A := by
  exact And.intro A.directJoint.independent A.directJoint.joinClosure

end ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean
end HautevilleHouse