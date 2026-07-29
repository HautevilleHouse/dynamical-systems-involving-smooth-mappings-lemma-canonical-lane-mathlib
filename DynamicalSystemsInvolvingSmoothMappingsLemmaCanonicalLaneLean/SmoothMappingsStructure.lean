import DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Smooth Mappings Structure
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean

structure SmoothMappingsPackage (A : AdmissibleClass) where
  smoothMap : Type u
  sourceManifold : Type v
  targetManifold : Type w
  smoothness : Prop
  dynamicsDefined : Prop
  smoothnessClosed : smoothness
  dynamicsDefinedClosed : dynamicsDefined

structure SmoothMappingsEvidence {A : AdmissibleClass} (P : SmoothMappingsPackage A) where
  smoothnessClosed : P.smoothness
  dynamicsDefinedClosed : P.dynamicsDefined

def SmoothMappingsClosed {A : AdmissibleClass} (P : SmoothMappingsPackage A) : Prop :=
  P.smoothness ∧ P.dynamicsDefined

theorem smooth_mappings_closed_from_evidence
    {A : AdmissibleClass} (P : SmoothMappingsPackage A) (E : SmoothMappingsEvidence P) :
    SmoothMappingsClosed P := by
  exact And.intro E.smoothnessClosed E.dynamicsDefinedClosed

end DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean
end HautevilleHouse