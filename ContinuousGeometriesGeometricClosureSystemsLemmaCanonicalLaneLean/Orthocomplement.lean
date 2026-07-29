import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean

structure OrthocomplementedGeometry (G : GeometricClosureSystem) where
  orthocomplement : Set G.underlyingSet → Set G.underlyingSet
  ortho_complement_of_complement : ∀ X : Set G.underlyingSet,
    orthocomplement (orthocomplement X) = X
  ortho_containment : ∀ X Y : Set G.underlyingSet,
    X ⊆ Y → orthocomplement Y ⊆ orthocomplement X
  ortho_meet_closure : ∀ X : Set G.underlyingSet,
    G.closureOperator (X ∩ orthocomplement X) = ∅
  ortho_join_closure : ∀ X : Set G.underlyingSet,
    G.closureOperator (X ∪ orthocomplement X) = G.underlyingSet

end ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean
end HautevilleHouse
