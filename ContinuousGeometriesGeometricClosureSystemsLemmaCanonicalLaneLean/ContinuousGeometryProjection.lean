import canonicalLaneMathlib.AdmissibleClass
import ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean.ContinuousGeometryLattice

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean

structure Projection where
  source : Type u
  target : Type u
  mapping : source → target
  idempotent : mapping ∘ mapping = mapping
  orderPreserving : ∀ a b : source, a ≤ b → mapping a ≤ mapping b
  dual : target → source
  dualProperties : dual ∘ mapping = id ∧ mapping ∘ dual = id

theorem projection_closed (P : Projection) : Prop :=
  P.idempotent ∧ P.orderPreserving ∧ P.dualProperties.1 ∧ P.dualProperties.2

end ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean
end HautevilleHouse