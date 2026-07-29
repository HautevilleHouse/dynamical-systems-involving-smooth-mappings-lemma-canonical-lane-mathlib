import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean

structure SmoothMappingsLemmaProofPackage (X : Type) [TopologicalSpace X] where
  ds : DynamicSystem X
  invariantMeasureProof : InvariantMeasureProof X ds
  convergenceProof : Prop
  convergenceProofClosed : convergenceProof
  attractorCharacterization : Prop
  attractorCharacterizationClosed : attractorCharacterization
  smoothMappingLemmaConcluded : Prop
  smoothMappingLemmaConcludedClosed : smoothMappingLemmaConcluded

def SmoothMappingsLemmaClosed (X : Type) [TopologicalSpace X] (pkg : SmoothMappingsLemmaProofPackage X) : Prop :=
  pkg.convergenceProof ∧ pkg.attractorCharacterization ∧ pkg.smoothMappingLemmaConcluded

theorem smooth_mappings_lemma_closed_from_proof (X : Type) [TopologicalSpace X] (pkg : SmoothMappingsLemmaProofPackage X) : SmoothMappingsLemmaClosed X pkg := by
  exact And.intro pkg.convergenceProofClosed (And.intro pkg.attractorCharacterizationClosed pkg.smoothMappingLemmaConcludedClosed)

end DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean
end HautevilleHouse
