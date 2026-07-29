import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

structure WormholeSolution where
  throatRadius : ℝ
  metricWormhole : Prop
  traversability : Prop
  energyConditionViolation : Prop
  asymptoticallyFlatRegions : Prop

def WormholeSolutionClosed (w : WormholeSolution) : Prop :=
  w.metricWormhole ∧ w.traversability ∧ w.energyConditionViolation ∧ w.asymptoticallyFlatRegions

structure WormholeSolutionEvidence (w : WormholeSolution) where
  metricWormholeClosed : w.metricWormhole
  traversabilityClosed : w.traversability
  energyConditionViolationClosed : w.energyConditionViolation
  asymptoticallyFlatRegionsClosed : w.asymptoticallyFlatRegions

theorem wormhole_solution_closed_from_evidence (w : WormholeSolution) (e : WormholeSolutionEvidence w) :
    WormholeSolutionClosed w := by
  exact And.intro e.metricWormholeClosed
    (And.intro e.traversabilityClosed (And.intro e.energyConditionViolationClosed e.asymptoticallyFlatRegionsClosed))

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse