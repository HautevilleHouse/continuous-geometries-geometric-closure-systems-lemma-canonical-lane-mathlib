import continuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean.ClosureSystemLemma

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean

structure GeometricLatticeRepresentationPackage {G : ContinuousGeometryPackage}
    {E : ExchangePropertyPackage G} {L : ClosureSystemLemmaPackage G E} where
  continuousGeometryToLattice : Prop
  latticeIsModular : Prop
  complementedLattice : Prop
  irreducibleSubspaces : Prop

structure GeometricLatticeRepresentationEvidence {G : ContinuousGeometryPackage}
    {E : ExchangePropertyPackage G} {L : ClosureSystemLemmaPackage G E}
    (R : GeometricLatticeRepresentationPackage G E L) where
  continuousGeometryToLatticeClosed : R.continuousGeometryToLattice
  latticeIsModularClosed : R.latticeIsModular
  complementedLatticeClosed : R.complementedLattice
  irreducibleSubspacesClosed : R.irreducibleSubspaces

def GeometricLatticeRepresentationClosed {G : ContinuousGeometryPackage}
    {E : ExchangePropertyPackage G} {L : ClosureSystemLemmaPackage G E}
    (R : GeometricLatticeRepresentationPackage G E L) : Prop :=
  R.continuousGeometryToLattice ∧ R.latticeIsModular ∧
  R.complementedLattice ∧ R.irreducibleSubspaces

theorem geometric_lattice_representation_closed_from_evidence
    {G : ContinuousGeometryPackage} {E : ExchangePropertyPackage G}
    {L : ClosureSystemLemmaPackage G E} (R : GeometricLatticeRepresentationPackage G E L)
    (Ev : GeometricLatticeRepresentationEvidence R) :
    GeometricLatticeRepresentationClosed R := by
  exact And.intro Ev.continuousGeometryToLatticeClosed
    (And.intro Ev.latticeIsModularClosed
      (And.intro Ev.complementedLatticeClosed Ev.irreducibleSubspacesClosed))

end ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean
end HautevilleHouse
