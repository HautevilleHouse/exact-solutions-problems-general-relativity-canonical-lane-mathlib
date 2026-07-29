import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

structure KerrSolutionFields where
  mass : ℝ
  angularMomentum : ℝ
  metricExplicit : Prop
  eventHorizons : Prop
  ergosphere : Prop

def KerrSolutionClosed (k : KerrSolutionFields) : Prop :=
  k.metricExplicit ∧ k.eventHorizons ∧ k.ergosphere

structure KerrSolutionEvidence (k : KerrSolutionFields) where
  metricExplicitClosed : k.metricExplicit
  eventHorizonsClosed : k.eventHorizons
  ergosphereClosed : k.ergosphere

theorem kerr_solution_closed_from_evidence (k : KerrSolutionFields) (e : KerrSolutionEvidence k) :
    KerrSolutionClosed k := by
  exact And.intro e.metricExplicitClosed (And.intro e.eventHorizonsClosed e.ergosphereClosed)

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse