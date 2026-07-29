import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean

structure SmoothMappingInvariant where
  invariantSet : Set stateSpace
  invariantForward : Prop
  invariantSmooth : Prop
  invariantForwardClosed : invariantForward
  invariantSmoothClosed : invariantSmooth

def SmoothMappingInvariantClosed (I : SmoothMappingInvariant) : Prop :=
  I.invariantForward ∧ I.invariantSmooth

theorem smooth_mapping_invariant_closed (I : SmoothMappingInvariant) :
    SmoothMappingInvariantClosed I :=
  And.intro I.invariantForwardClosed I.invariantSmoothClosed

end DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean
end HautevilleHouse
