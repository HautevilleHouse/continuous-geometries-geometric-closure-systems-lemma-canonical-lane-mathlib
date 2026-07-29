import continuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GeometricClosureState where
  object : GeometricClosureAdmittedObject

def geometricClosureProjection : Projection GeometricClosureState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem geometric_closure_projection_idempotent (x : GeometricClosureState) :
    geometricClosureProjection.toFun (geometricClosureProjection.toFun x) = geometricClosureProjection.toFun x := by
  exact geometricClosureProjection.idempotent x

end ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean
end HautevilleHouse
