import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean

structure SmoothMappingConjugacy where
  sourceSystem : DynamicalSystem
  targetSystem : DynamicalSystem
  conjugacyMap : stateSpace → stateSpace
  conjugacySmooth : Prop
  conjugacyCommutative : Prop
  conjugacySmoothClosed : conjugacySmooth
  conjugacyCommutativeClosed : conjugacyCommutative

def SmoothMappingConjugacyClosed (C : SmoothMappingConjugacy) : Prop :=
  C.conjugacySmooth ∧ C.conjugacyCommutative

theorem smooth_mapping_conjugacy_closed (C : SmoothMappingConjugacy) :
    SmoothMappingConjugacyClosed C :=
  And.intro C.conjugacySmoothClosed C.conjugacyCommutativeClosed

end DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean
end HautevilleHouse
