import continuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean.ExchangeProperty

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean

structure ClosureSystemLemmaPackage {G : ContinuousGeometryPackage} {E : ExchangePropertyPackage G} where
  closureSystemIsMatroid : Prop
  geometricLatticeFromContinuous : Prop
  dimensionFunctionSubmodular : Prop
  rankNullity : Prop

structure ClosureSystemLemmaEvidence {G : ContinuousGeometryPackage} {E : ExchangePropertyPackage G}
    (L : ClosureSystemLemmaPackage G E) where
  closureSystemIsMatroidClosed : L.closureSystemIsMatroid
  geometricLatticeFromContinuousClosed : L.geometricLatticeFromContinuous
  dimensionFunctionSubmodularClosed : L.dimensionFunctionSubmodular
  rankNullityClosed : L.rankNullity

def ClosureSystemLemmaClosed {G : ContinuousGeometryPackage} {E : ExchangePropertyPackage G}
    (L : ClosureSystemLemmaPackage G E) : Prop :=
  L.closureSystemIsMatroid ∧ L.geometricLatticeFromContinuous ∧
  L.dimensionFunctionSubmodular ∧ L.rankNullity

theorem closure_system_lemma_closed_from_evidence
    {G : ContinuousGeometryPackage} {E : ExchangePropertyPackage G}
    (L : ClosureSystemLemmaPackage G E) (Ev : ClosureSystemLemmaEvidence L) :
    ClosureSystemLemmaClosed L := by
  exact And.intro Ev.closureSystemIsMatroidClosed
    (And.intro Ev.geometricLatticeFromContinuousClosed
      (And.intro Ev.dimensionFunctionSubmodularClosed Ev.rankNullityClosed))

end ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean
end HautevilleHouse
