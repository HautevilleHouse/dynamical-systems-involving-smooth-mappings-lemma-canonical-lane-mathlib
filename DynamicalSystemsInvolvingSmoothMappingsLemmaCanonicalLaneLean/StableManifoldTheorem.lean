import DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean.InvariantManifold

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean

structure StableManifoldPackage {F : SmoothFlowPackage} (I : InvariantManifoldPackage F) where
  fixedPoint : F.timeDomain → SmoothMappingObject.sourceSpace
  stableManifold : InvariantManifoldPackage F
  exponentialDecay : Prop
  tangentSpaceSplitting : Prop

structure StableManifoldEvidence {F : SmoothFlowPackage} {I : InvariantManifoldPackage F}
    (S : StableManifoldPackage I) where
  exponentialDecayClosed : S.exponentialDecay
  tangentSpaceSplittingClosed : S.tangentSpaceSplitting

def StableManifoldClosed {F : SmoothFlowPackage} {I : InvariantManifoldPackage F}
    (S : StableManifoldPackage I) : Prop :=
  S.exponentialDecay ∧ S.tangentSpaceSplitting

theorem stable_manifold_closed_from_evidence
    {F : SmoothFlowPackage} {I : InvariantManifoldPackage F}
    (S : StableManifoldPackage I) (E : StableManifoldEvidence S) :
    StableManifoldClosed S := by
  exact And.intro E.exponentialDecayClosed E.tangentSpaceSplittingClosed

end DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean
end HautevilleHouse
