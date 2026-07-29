import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean

structure PesinTheoryPackage {D : SmoothMappingsDynamicalSystem}
    (H : HyperbolicDynamicsPackage (L : SmoothMappingLemmaPackage D)) where
  nonuniformHyperbolicity : Prop
  LyapunovExponents : D.stateSpace → List ℝ
  OseledetsSplitting : Prop
  stableManifoldNonuniform : Prop
  unstableManifoldNonuniform : Prop
  absoluteContinuity : Prop

structure PesinTheoryEvidence {D : SmoothMappingsDynamicalSystem}
    {H : HyperbolicDynamicsPackage (L : SmoothMappingLemmaPackage D)} (P : PesinTheoryPackage H) where
  nonuniformHyperbolicityClosed : P.nonuniformHyperbolicity
  OseledetsSplittingClosed : P.OseledetsSplitting
  stableManifoldNonuniformClosed : P.stableManifoldNonuniform
  unstableManifoldNonuniformClosed : P.unstableManifoldNonuniform
  absoluteContinuityClosed : P.absoluteContinuity

def PesinTheoryClosed {D : SmoothMappingsDynamicalSystem}
    {H : HyperbolicDynamicsPackage (L : SmoothMappingLemmaPackage D)} (P : PesinTheoryPackage H) : Prop :=
  P.nonuniformHyperbolicity ∧ P.OseledetsSplitting ∧ P.stableManifoldNonuniform ∧ P.unstableManifoldNonuniform ∧ P.absoluteContinuity

theorem pesin_theory_closed_from_evidence
    {D : SmoothMappingsDynamicalSystem} {H : HyperbolicDynamicsPackage (L : SmoothMappingLemmaPackage D)}
    (P : PesinTheoryPackage H) (E : PesinTheoryEvidence P) : PesinTheoryClosed P := by
  exact And.intro E.nonuniformHyperbolicityClosed
    (And.intro E.OseledetsSplittingClosed
      (And.intro E.stableManifoldNonuniformClosed
        (And.intro E.unstableManifoldNonuniformClosed E.absoluteContinuityClosed)))

end DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean
end HautevilleHouse