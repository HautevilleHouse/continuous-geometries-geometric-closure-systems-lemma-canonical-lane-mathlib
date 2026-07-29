import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean

structure GeometricClosureSystem where
  carrierSet : Type u
  closureOperator : (Set carrierSet) → (Set carrierSet)
  closureProperties : Prop
  isGeometric : Prop

def geometricClosureClosed (G : GeometricClosureSystem) : Prop :=
  G.closureProperties ∧ G.isGeometric

structure GeometricClosureEvidence (G : GeometricClosureSystem) where
  closurePropertiesClosed : G.closureProperties
  isGeometricClosed : G.isGeometric

theorem geometric_closure_closed_from_evidence (G : GeometricClosureSystem)
    (E : GeometricClosureEvidence G) : geometricClosureClosed G := by
  exact And.intro E.closurePropertiesClosed E.isGeometricClosed

end ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean
end HautevilleHouse