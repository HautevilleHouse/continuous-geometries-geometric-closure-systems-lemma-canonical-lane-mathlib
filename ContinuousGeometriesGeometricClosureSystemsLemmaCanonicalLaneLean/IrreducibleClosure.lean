import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean

structure IrreducibleClosure where
  closureSystem : GeometricClosureSystem
  irreducibleWitness : (x : closureSystem.carrierSet) → Prop
  closurePreservesIrreducibility : Prop

def irreducibleClosureClosed (I : IrreducibleClosure) : Prop :=
  geometricClosureClosed I.closureSystem ∧ I.closurePreservesIrreducibility

structure IrreducibleClosureEvidence (I : IrreducibleClosure) where
  closureSystemClosed : geometricClosureClosed I.closureSystem
  closurePreservesIrreducibilityClosed : I.closurePreservesIrreducibility

theorem irreducible_closure_closed_from_evidence (I : IrreducibleClosure)
    (E : IrreducibleClosureEvidence I) : irreducibleClosureClosed I := by
  exact And.intro E.closureSystemClosed E.closurePreservesIrreducibilityClosed

end ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean
end HautevilleHouse