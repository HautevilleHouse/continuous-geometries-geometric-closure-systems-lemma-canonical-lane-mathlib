import canonicalLaneMathlib.AdmissibleClass
import ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean.ContinuousGeometrySteinitz

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean

structure Basis extends IndependentSet where
  spanning : closureOperator elements = carrier

def basisClosed (B : Basis) : Prop :=
  independentSetClosed B.toIndependentSet ∧ B.spanning

theorem basis_dimension_unique (B1 B2 : Basis) : B1.elements.cardinal = B2.elements.cardinal := by
  -- Using Steinitz exchange, one can prove all bases have same cardinality
  sorry

end ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean
end HautevilleHouse