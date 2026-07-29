import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeometricClosureClosed (A.object : GeometricClosureSystem)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
by
  exact A.object.conclusion

end ContinuousGeometriesGeometricClosureSystemsLemmaCanonicalLaneLean
end HautevilleHouse
