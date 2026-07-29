import DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean.InvariantManifold

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean

structure CenterManifoldPackage (M : InvariantManifoldPackage) where
  centerDirectionExists : Prop
  reductionPrinciple : Prop
  tangencyAtFixedPoint : Prop
  smoothDependence : Prop

structure CenterManifoldEvidence {M : InvariantManifoldPackage}
    (C : CenterManifoldPackage M) where
  centerDirectionExistsClosed : C.centerDirectionExists
  reductionPrincipleClosed : C.reductionPrinciple
  tangencyAtFixedPointClosed : C.tangencyAtFixedPoint
  smoothDependenceClosed : C.smoothDependence

def CenterManifoldClosed {M : InvariantManifoldPackage}
    (C : CenterManifoldPackage M) : Prop :=
  C.centerDirectionExists ∧ C.reductionPrinciple ∧
  C.tangencyAtFixedPoint ∧ C.smoothDependence

theorem center_manifold_closed_from_evidence
    {M : InvariantManifoldPackage} (C : CenterManifoldPackage M)
    (E : CenterManifoldEvidence C) : CenterManifoldClosed C := by
  exact And.intro E.centerDirectionExistsClosed
    (And.intro E.reductionPrincipleClosed
      (And.intro E.tangencyAtFixedPointClosed E.smoothDependenceClosed))

end DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean
end HautevilleHouse