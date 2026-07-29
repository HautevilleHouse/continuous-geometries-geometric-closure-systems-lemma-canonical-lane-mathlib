import canonicalLaneMathlib.AdmissibleClass
import ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean.ContinuousGeometryProjection

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean

structure IndependentSet where
  carrier : Type u
  elements : Set carrier
  independenceRelation : ∀ (x : carrier), x ∉ closureOperator (elements \ {x})
  maximal : (∀ y : carrier, y ∉ elements → ¬ independenceRelation (union elements {y}))

def independentSetClosed (I : IndependentSet) : Prop :=
  I.independenceRelation ∧ I.maximal

theorem independence_characterization (I : IndependentSet) : independentSetClosed I :=
  And.intro I.independenceRelation I.maximal

end ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean
end HautevilleHouse