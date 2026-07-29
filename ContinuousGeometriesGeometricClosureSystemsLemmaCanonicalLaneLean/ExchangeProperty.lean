import continuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean.ContinuousGeometryStructure

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean

structure ExchangePropertyPackage {G : ContinuousGeometryPackage} where
  exchangePropertyHolds : Prop
  steinitzExchange : Prop
  macLaneSteinitz : Prop
  basisCardinality : Prop

structure ExchangePropertyEvidence {G : ContinuousGeometryPackage} (E : ExchangePropertyPackage G) where
  exchangePropertyHoldsClosed : E.exchangePropertyHolds
  steinitzExchangeClosed : E.steinitzExchange
  macLaneSteinitzClosed : E.macLaneSteinitz
  basisCardinalityClosed : E.basisCardinality

def ExchangePropertyClosed {G : ContinuousGeometryPackage} (E : ExchangePropertyPackage G) : Prop :=
  E.exchangePropertyHolds ∧ E.steinitzExchange ∧ E.macLaneSteinitz ∧ E.basisCardinality

theorem exchange_property_closed_from_evidence
    {G : ContinuousGeometryPackage} (E : ExchangePropertyPackage G)
    (Ev : ExchangePropertyEvidence E) : ExchangePropertyClosed E := by
  exact And.intro Ev.exchangePropertyHoldsClosed
    (And.intro Ev.steinitzExchangeClosed
      (And.intro Ev.macLaneSteinitzClosed Ev.basisCardinalityClosed))

end ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean
end HautevilleHouse
