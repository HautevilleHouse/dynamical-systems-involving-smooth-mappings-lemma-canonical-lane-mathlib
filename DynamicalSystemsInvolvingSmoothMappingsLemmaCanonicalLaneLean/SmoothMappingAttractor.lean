import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean

structure SmoothMappingAttractor where
  attractorSet : Set stateSpace
  isAttracting : Prop
  localStable : Prop
  smoothAttractor : Prop
  isAttractingClosed : isAttracting
  localStableClosed : localStable
  smoothAttractorClosed : smoothAttractor

def SmoothMappingAttractorClosed (A : SmoothMappingAttractor) : Prop :=
  A.isAttracting ∧ A.localStable ∧ A.smoothAttractor

theorem smooth_mapping_attractor_closed (A : SmoothMappingAttractor) :
    SmoothMappingAttractorClosed A :=
  And.intro A.isAttractingClosed (And.intro A.localStableClosed A.smoothAttractorClosed)

end DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean
end HautevilleHouse
