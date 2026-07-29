import DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean.SmoothMappingClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean

structure SmoothFlowPackage where
  timeDomain : Type u
  flowMapping : timeDomain → SmoothMappingObject
  groupAction : Prop
  continuousDependence : Prop
  smoothDependence : Prop

structure SmoothFlowEvidence (F : SmoothFlowPackage) where
  groupActionClosed : F.groupAction
  continuousDependenceClosed : F.continuousDependence
  smoothDependenceClosed : F.smoothDependence

def SmoothFlowClosed (F : SmoothFlowPackage) : Prop :=
  F.groupAction ∧ F.continuousDependence ∧ F.smoothDependence

theorem smooth_flow_closed_from_evidence (F : SmoothFlowPackage) (E : SmoothFlowEvidence F) :
    SmoothFlowClosed F := by
  exact And.intro E.groupActionClosed
    (And.intro E.continuousDependenceClosed E.smoothDependenceClosed)

end DynamicalSystemsInvolvingSmoothMappingsLemmaCanonicalLaneLean
end HautevilleHouse
