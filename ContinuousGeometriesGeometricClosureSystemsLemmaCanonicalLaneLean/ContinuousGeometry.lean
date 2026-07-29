import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean

structure ContinuousGeometry where
  underlyingSet : Type u
  join : underlyingSet → underlyingSet → underlyingSet
  meet : underlyingSet → underlyingSet → underlyingSet
  orthocomplement : underlyingSet → underlyingSet
  axioms : Prop

def continuousGeometryClosed (C : ContinuousGeometry) : Prop :=
  C.axioms

structure ContinuousGeometryEvidence (C : ContinuousGeometry) where
  axiomsClosed : C.axioms

theorem continuous_geometry_closed_from_evidence (C : ContinuousGeometry)
    (E : ContinuousGeometryEvidence C) : continuousGeometryClosed C := by
  exact E.axiomsClosed

end ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean
end HautevilleHouse