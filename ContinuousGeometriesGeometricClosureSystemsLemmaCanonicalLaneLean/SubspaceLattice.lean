import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean

structure SubspaceLattice (G : GeometricClosureSystem) where
  subspaces : Set (Set G.underlyingSet)
  closure_closed : ∀ X ∈ subspaces, G.closureOperator X = X
  meet_closed : ∀ X Y ∈ subspaces, X ∩ Y ∈ subspaces
  join_closed : ∀ X Y ∈ subspaces, G.closureOperator (X ∪ Y) ∈ subspaces

theorem subspace_lattice_is_complete_lattice (G : GeometricClosureSystem) (L : SubspaceLattice G) :
    CompleteLattice L.subspaces :=
by
  sorry

end ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean
end HautevilleHouse
