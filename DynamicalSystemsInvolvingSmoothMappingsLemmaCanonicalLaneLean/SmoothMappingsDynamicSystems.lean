import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean

structure DynamicSystem (X : Type) [TopologicalSpace X] where
  stateSpace : Type
  smoothMap : stateSpace → stateSpace
  invariantMeasure : Prop
  timeEvolution : Prop
  attractorSet : Set stateSpace
  smoothnessCondition : Prop
  ergodicityCondition : Prop
  attractorBasin : Set stateSpace
  convergenceRate : Prop

structure InvariantMeasureProof (X : Type) [TopologicalSpace X] (ds : DynamicSystem X) where
  measurePreserving : Prop
  measurePreservingClosed : measurePreserving
  attractorMeasure : Prop
  attractorMeasureClosed : attractorMeasure

def dynamicSystemClosed (X : Type) [TopologicalSpace X] (ds : DynamicSystem X) : Prop :=
  ds.smoothnessCondition ∧ ds.ergodicityCondition ∧ ds.convergenceRate

end DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean
end HautevilleHouse
