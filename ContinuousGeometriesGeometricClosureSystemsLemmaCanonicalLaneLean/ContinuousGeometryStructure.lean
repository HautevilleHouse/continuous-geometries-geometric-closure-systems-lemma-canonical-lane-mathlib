import continuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean.GeometricClosureObject

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean

structure ContinuousGeometryPackage where
  geoSpace : GeometricSpace
  closureOperator : (Set (geoSpace.carrier)) → (Set (geoSpace.carrier))
  closureClosed : Prop
  continuousExteriorAlgebra : Prop
  latticeIsContinuous : Prop
  dimensionTheory : Prop

structure ContinuousGeometryEvidence (G : ContinuousGeometryPackage) where
  closureClosedClosed : G.closureClosed
  continuousExteriorAlgebraClosed : G.continuousExteriorAlgebra
  latticeIsContinuousClosed : G.latticeIsContinuous
  dimensionTheoryClosed : G.dimensionTheory

def ContinuousGeometryClosed (G : ContinuousGeometryPackage) : Prop :=
  G.closureClosed ∧ G.continuousExteriorAlgebra ∧ G.latticeIsContinuous ∧ G.dimensionTheory

theorem continuous_geometry_closed_from_evidence
    (G : ContinuousGeometryPackage) (E : ContinuousGeometryEvidence G) :
    ContinuousGeometryClosed G := by
  exact And.intro E.closureClosedClosed
    (And.intro E.continuousExteriorAlgebraClosed
      (And.intro E.latticeIsContinuousClosed E.dimensionTheoryClosed))

end ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean
end HautevilleHouse
