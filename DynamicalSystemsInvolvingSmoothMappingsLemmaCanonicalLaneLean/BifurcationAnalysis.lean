import DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean.InvariantManifold

/-!
# Bifurcation Analysis Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean

structure BifurcationAnalysisPackage {A : AdmissibleClass} {S : SmoothMappingsPackage A}
    {L : LocalLinearizationPackage S} (I : InvariantManifoldPackage L) where
  bifurcationPoints : Prop
  changeInDynamics : Prop
  topologicalConsequences : Prop
  bifurcationPointsClosed : bifurcationPoints
  changeInDynamicsClosed : changeInDynamics
  topologicalConsequencesClosed : topologicalConsequences

structure BifurcationAnalysisEvidence {A : AdmissibleClass} {S : SmoothMappingsPackage A}
    {L : LocalLinearizationPackage S} {I : InvariantManifoldPackage L}
    (B : BifurcationAnalysisPackage I) where
  bifurcationPointsClosed : B.bifurcationPoints
  changeInDynamicsClosed : B.changeInDynamics
  topologicalConsequencesClosed : B.topologicalConsequences

def BifurcationAnalysisClosed {A : AdmissibleClass} {S : SmoothMappingsPackage A}
    {L : LocalLinearizationPackage S} {I : InvariantManifoldPackage L}
    (B : BifurcationAnalysisPackage I) : Prop :=
  B.bifurcationPoints ∧ B.changeInDynamics ∧ B.topologicalConsequences

theorem bifurcation_analysis_closed_from_evidence
    {A : AdmissibleClass} {S : SmoothMappingsPackage A}
    {L : LocalLinearizationPackage S} {I : InvariantManifoldPackage L}
    (B : BifurcationAnalysisPackage I) (E : BifurcationAnalysisEvidence B) :
    BifurcationAnalysisClosed B := by
  exact And.intro E.bifurcationPointsClosed
    (And.intro E.changeInDynamicsClosed E.topologicalConsequencesClosed)

end DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean
end HautevilleHouse