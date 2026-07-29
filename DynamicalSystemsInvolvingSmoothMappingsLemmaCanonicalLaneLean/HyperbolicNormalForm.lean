import DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean.InvariantManifold

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean

structure HyperbolicNormalFormPackage (M : InvariantManifoldPackage) where
  linearizationExists : Prop
  hyperbolicityCondition : Prop
  spectralDecomposition : Prop
  normalFormCoordinates : Prop

structure HyperbolicNormalFormEvidence {M : InvariantManifoldPackage}
    (H : HyperbolicNormalFormPackage M) where
  linearizationExistsClosed : H.linearizationExists
  hyperbolicityConditionClosed : H.hyperbolicityCondition
  spectralDecompositionClosed : H.spectralDecomposition
  normalFormCoordinatesClosed : H.normalFormCoordinates

def HyperbolicNormalFormClosed {M : InvariantManifoldPackage}
    (H : HyperbolicNormalFormPackage M) : Prop :=
  H.linearizationExists ∧ H.hyperbolicityCondition ∧
  H.spectralDecomposition ∧ H.normalFormCoordinates

theorem hyperbolic_normal_form_closed_from_evidence
    {M : InvariantManifoldPackage} (H : HyperbolicNormalFormPackage M)
    (E : HyperbolicNormalFormEvidence H) : HyperbolicNormalFormClosed H := by
  exact And.intro E.linearizationExistsClosed
    (And.intro E.hyperbolicityConditionClosed
      (And.intro E.spectralDecompositionClosed E.normalFormCoordinatesClosed))

end DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean
end HautevilleHouse