import DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean.SmoothMappingClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SmoothWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.smoothness

end DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean
end HautevilleHouse
