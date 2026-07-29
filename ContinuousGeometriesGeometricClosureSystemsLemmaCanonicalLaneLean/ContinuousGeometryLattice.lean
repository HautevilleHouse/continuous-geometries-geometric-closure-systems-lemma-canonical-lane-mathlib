import canonicalLaneMathlib.AdmissibleClass
import ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean.ContinuousGeometryClosureSystemsLemma

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean

structure LatticeStructure where
  join : Carrier → Carrier → Carrier
  meet : Carrier → Carrier → Carrier
  latticeProperties : (∀ a b : Carrier, join a b = join b a) ∧ (∀ a b : Carrier, meet a b = meet b a) ∧ (∀ a b c : Carrier, join a (join b c) = join (join a b) c) ∧ (∀ a b c : Carrier, meet a (meet b c) = meet (meet a b) c)
  absorption : ∀ a b : Carrier, join a (meet a b) = a ∧ meet a (join a b) = a
  continuous : (∀ X : Set Carrier, IsChain X → joinSup X = sup (join x) for x in X) ∧ (∀ X : Set Carrier, IsChain X → meetInf X = inf (meet x) for x in X)

theorem lattice_continuous_closure (L : LatticeStructure) : Prop :=
  L.latticeProperties.1 ∧ L.latticeProperties.2.1 ∧ L.latticeProperties.2.2.1 ∧ L.latticeProperties.2.2.2 ∧ L.absorption.1 ∧ L.absorption.2 ∧ L.continuous.1 ∧ L.continuous.2

end ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean
end HautevilleHouse