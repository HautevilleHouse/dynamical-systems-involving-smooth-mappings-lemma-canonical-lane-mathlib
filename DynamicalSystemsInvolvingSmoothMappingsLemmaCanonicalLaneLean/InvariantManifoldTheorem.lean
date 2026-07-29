import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean

structure InvariantManifoldTheoremPackage {D : SmoothMappingsDynamicalSystem}
    (L : SmoothMappingLemmaPackage D) where
  fixedPoint : D.stateSpace
  fixedPointProperty : L.smoothMapping fixedPoint = fixedPoint
  derivativeAtFixedPoint : D.stateSpace → D.stateSpace
  derivativeIsLinear : IsLinearMap ℝ derivativeAtFixedPoint
  hyperbolicSplit : Prop
  stableManifoldEmbedding : D.stateSpace → D.stateSpace
  unstableManifoldEmbedding : D.stateSpace → D.stateSpace
  localStableManifold : Set D.stateSpace
  localUnstableManifold : Set D.stateSpace
  invariantUnderFlow : ∀ (t : D.timeDomain), D.smoothFlow t '' localStableManifold = localStableManifold
  smoothnessOfManifolds : ContDiff ⊤ stableManifoldEmbedding ∧ ContDiff ⊤ unstableManifoldEmbedding

structure InvariantManifoldTheoremEvidence {D : SmoothMappingsDynamicalSystem}
    {L : SmoothMappingLemmaPackage D} (I : InvariantManifoldTheoremPackage L) where
  fixedPointPropertyClosed : I.fixedPointProperty
  hyperbolicSplitClosed : I.hyperbolicSplit
  invariantUnderFlowClosed : I.invariantUnderFlow
  smoothnessOfManifoldsClosed : I.smoothnessOfManifolds

def InvariantManifoldTheoremClosed {D : SmoothMappingsDynamicalSystem}
    {L : SmoothMappingLemmaPackage D} (I : InvariantManifoldTheoremPackage L) : Prop :=
  I.fixedPointProperty ∧ I.hyperbolicSplit ∧ I.invariantUnderFlow ∧ I.smoothnessOfManifolds

theorem invariant_manifold_theorem_closed_from_evidence
    {D : SmoothMappingsDynamicalSystem} {L : SmoothMappingLemmaPackage D}
    (I : InvariantManifoldTheoremPackage L) (E : InvariantManifoldTheoremEvidence I) :
    InvariantManifoldTheoremClosed I := by
  exact And.intro E.fixedPointPropertyClosed
    (And.intro E.hyperbolicSplitClosed
      (And.intro E.invariantUnderFlowClosed E.smoothnessOfManifoldsClosed))

end DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean
end HautevilleHouse