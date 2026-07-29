import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean

structure ClosureSystem (A : AdmissibleClass) where
  carrier : Type u
  equivalenceRelation : carrier → carrier → Prop
  closureOperator : (Set carrier) → (Set carrier)
  closureProperties : closureOperator ∘ closureOperator = closureOperator ∧ (∀ s : Set carrier, s ⊆ closureOperator s)
  continuousGeometryStructure : Prop

def closureSystemClosed (CS : ClosureSystem) : Prop :=
  CS.closureProperties.1 ∧ CS.closureProperties.2 ∧ CS.continuousGeometryStructure

end ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean
end HautevilleHouse