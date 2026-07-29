import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean

structure SmoothMappingsDynamicalSystem where
  stateSpace : Type u
  stateTopology : TopologicalSpace stateSpace
  smoothStructure : ContDiffManifold stateSpace
  timeDomain : Type v
  timeTopology : TopologicalSpace timeDomain
  timeAdd : AddMonoid timeDomain
  timeContinuousAdd : ContinuousAdd timeDomain
  smoothFlow : timeDomain → stateSpace → stateSpace
  smoothFlowContTime : Continuous (Function.uncurry smoothFlow)
  smoothFlowDiff : ∀ (t : timeDomain), ContDiff ⊤ (smoothFlow t)
  flowStartEq : ∀ (x : stateSpace), smoothFlow 0 x = x
  flowAdditive : ∀ (t₁ t₂ : timeDomain) (x : stateSpace), smoothFlow (t₁ + t₂) x = smoothFlow t₁ (smoothFlow t₂ x)
  invariantSet : Prop
  invariantUnderFlow : IsInvariant smoothFlow invariantSet

end DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean
end HautevilleHouse