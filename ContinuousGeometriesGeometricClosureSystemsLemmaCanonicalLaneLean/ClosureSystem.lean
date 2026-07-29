import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean

structure ClosureSystem (L : Type u) [SemilatticeSup L] [OrderTop L] where
  carrier : Set L
  closedUnderSup : ∀ {x y : L}, x ∈ carrier → y ∈ carrier → x ⊔ y ∈ carrier
  containsTop : ⊤ ∈ carrier
  closureOperator : L → L
  isClosureOperator : IsClosureOperator closureOperator

structure ClosureSystemEvidence (L : Type u) [SemilatticeSup L] [OrderTop L]
    (C : ClosureSystem L) where
  carrier_nonempty : Set.Nonempty C.carrier

end ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean
end HautevilleHouse