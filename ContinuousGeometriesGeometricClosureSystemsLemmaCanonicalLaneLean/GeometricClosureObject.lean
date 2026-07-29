import continuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GeometricSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  complementRelation : carrier → carrier → Prop
  latticeOperations : carrier → carrier → carrier

structure GeometricClosureAdmittedObject where
  space : GeometricSpace
  closureSystem : Prop
  exchangeProperty : Prop
  matroidAxioms : Prop
  geometricLattice : Prop
  closureModel : Type
  closureTopology : TopologicalSpace closureModel
  isomorphicToClosure : Prop
  conclusion : isomorphicToClosure

def GeometricClosureWitnessClosed (O : GeometricClosureAdmittedObject) : Prop :=
  O.isomorphicToClosure

end ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean
end HautevilleHouse
