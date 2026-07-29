import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean

structure HyperbolicDynamicsPackage {D : SmoothMappingsDynamicalSystem}
    (L : SmoothMappingLemmaPackage D) where
  hyperbolicSet : Set D.stateSpace
  tangentBundleSplit : Prop
  contractingDirection : D.stateSpace → Set (D.stateSpace → D.stateSpace)
  expandingDirection : D.stateSpace → Set (D.stateSpace → D.stateSpace)
  contractionExponent : ℝ
  expansionExponent : ℝ
  invarianceUnderDerivative : Prop
  stableUnstableTransversality : Prop

structure HyperbolicDynamicsEvidence {D : SmoothMappingsDynamicalSystem}
    {L : SmoothMappingLemmaPackage D} (H : HyperbolicDynamicsPackage L) where
  tangentBundleSplitClosed : H.tangentBundleSplit
  invarianceUnderDerivativeClosed : H.invarianceUnderDerivative
  stableUnstableTransversalityClosed : H.stableUnstableTransversality

def HyperbolicDynamicsClosed {D : SmoothMappingsDynamicalSystem}
    {L : SmoothMappingLemmaPackage D} (H : HyperbolicDynamicsPackage L) : Prop :=
  H.tangentBundleSplit ∧ H.invarianceUnderDerivative ∧ H.stableUnstableTransversality

theorem hyperbolic_dynamics_closed_from_evidence
    {D : SmoothMappingsDynamicalSystem} {L : SmoothMappingLemmaPackage D}
    (H : HyperbolicDynamicsPackage L) (E : HyperbolicDynamicsEvidence H) :
    HyperbolicDynamicsClosed H := by
  exact And.intro E.tangentBundleSplitClosed
    (And.intro E.invarianceUnderDerivativeClosed E.stableUnstableTransversalityClosed)

end DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean
end HautevilleHouse