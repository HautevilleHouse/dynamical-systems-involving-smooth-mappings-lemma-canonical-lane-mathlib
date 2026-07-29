import DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean.SmoothMappingsStructure

/-!
# Local Linearization Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean

structure LocalLinearizationPackage {A : AdmissibleClass} (S : SmoothMappingsPackage A) where
  fixedPoint : S.sourceManifold
  derivativeAtFixedPoint : Type u
  linearizationValid : Prop
  linearizationValidClosed : linearizationValid

structure LocalLinearizationEvidence {A : AdmissibleClass} {S : SmoothMappingsPackage A}
    (L : LocalLinearizationPackage S) where
  linearizationValidClosed : L.linearizationValid

def LocalLinearizationClosed {A : AdmissibleClass} {S : SmoothMappingsPackage A}
    (L : LocalLinearizationPackage S) : Prop :=
  L.linearizationValid

theorem local_linearization_closed_from_evidence
    {A : AdmissibleClass} {S : SmoothMappingsPackage A}
    (L : LocalLinearizationPackage S) (E : LocalLinearizationEvidence L) :
    LocalLinearizationClosed L := by
  exact E.linearizationValidClosed

end DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean
end HautevilleHouse