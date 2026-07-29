import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

structure SchwarzschildSolution where
  mass : ℝ
  metricSchwarzschild : Prop
  singularityAtR2M : Prop
  eventHorizon : Prop
  asymptoticFlatness : Prop

def SchwarzschildSolutionClosed (s : SchwarzschildSolution) : Prop :=
  s.metricSchwarzschild ∧ s.singularityAtR2M ∧ s.eventHorizon ∧ s.asymptoticFlatness

structure SchwarzschildSolutionEvidence (s : SchwarzschildSolution) where
  metricSchwarzschildClosed : s.metricSchwarzschild
  singularityAtR2MClosed : s.singularityAtR2M
  eventHorizonClosed : s.eventHorizon
  asymptoticFlatnessClosed : s.asymptoticFlatness

theorem schwarzschild_solution_closed_from_evidence (s : SchwarzschildSolution)
    (e : SchwarzschildSolutionEvidence s) : SchwarzschildSolutionClosed s := by
  exact And.intro e.metricSchwarzschildClosed
    (And.intro e.singularityAtR2MClosed (And.intro e.eventHorizonClosed e.asymptoticFlatnessClosed))

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse