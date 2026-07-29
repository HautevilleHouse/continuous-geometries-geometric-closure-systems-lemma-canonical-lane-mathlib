import canonicalLaneMathlib.AdmissibleClass
import ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean.ContinuousGeometryBasis

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean

def rank (X : Set carrier) : Cardinal :=
  min (B : Basis) (B.elements.cardinal) where B.elements ⊆ X

theorem rank_well_defined (X : Set carrier) : rank X = sup { cardinality of independent subsets of X } := by
  sorry

theorem rank_subadditivity (X Y : Set carrier) : rank (X ∪ Y) + rank (X ∩ Y) ≤ rank X + rank Y := by
  sorry

end ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean
end HautevilleHouse