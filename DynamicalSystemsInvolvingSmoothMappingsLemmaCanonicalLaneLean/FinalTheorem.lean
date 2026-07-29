import DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean

def ConstrainedSmoothMappingsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_smooth_mappings_endgame (A : AdmissibleClass) :
    ConstrainedSmoothMappingsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean
end HautevilleHouse
