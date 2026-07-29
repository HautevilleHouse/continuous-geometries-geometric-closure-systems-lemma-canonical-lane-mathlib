import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean

structure DirectJoint (L : Type u) [SemilatticeSup L] [OrderTop L] (C : ClosureSystem L) where
  a : L
  b : L
  independent : a ⊓ b = ⊥
  joinClosure : a ⊔ b ∈ C.carrier

structure DirectJointEvidence (L : Type u) [SemilatticeSup L] [OrderTop L]
    {C : ClosureSystem L} (J : DirectJoint L C) where
  independentClosed : J.independent
  joinClosureClosed : J.joinClosure

end ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean
end HautevilleHouse