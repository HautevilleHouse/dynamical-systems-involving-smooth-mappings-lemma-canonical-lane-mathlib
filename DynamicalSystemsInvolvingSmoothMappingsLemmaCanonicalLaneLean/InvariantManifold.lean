import DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean.SmoothFlowPackage

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean

structure InvariantManifoldPackage (F : SmoothFlowPackage) where
  manifoldType : Type u
  embedding : manifoldType → F.timeDomain → SmoothMappingObject.sourceSpace
  invarianceCondition : Prop
  smoothness : Prop

structure InvariantManifoldEvidence {F : SmoothFlowPackage} (I : InvariantManifoldPackage F) where
  invarianceConditionClosed : I.invarianceCondition
  smoothnessClosed : I.smoothness

def InvariantManifoldClosed {F : SmoothFlowPackage} (I : InvariantManifoldPackage F) : Prop :=
  I.invarianceCondition ∧ I.smoothness

theorem invariant_manifold_closed_from_evidence
    {F : SmoothFlowPackage} (I : InvariantManifoldPackage F) (E : InvariantManifoldEvidence I) :
    InvariantManifoldClosed I := by
  exact And.intro E.invarianceConditionClosed E.smoothnessClosed

end DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean
end HautevilleHouse
