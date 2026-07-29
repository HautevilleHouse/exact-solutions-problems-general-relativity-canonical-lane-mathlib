import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

structure GodelSolutionFields where
  rotationParameter : ℝ
  metricGodel : Prop
  closedTimelikeCurves : Prop
  homogeneity : Prop
  cosmologicalConstantPresent : Prop

def GodelSolutionClosed (g : GodelSolutionFields) : Prop :=
  g.metricGodel ∧ g.closedTimelikeCurves ∧ g.homogeneity ∧ g.cosmologicalConstantPresent

structure GodelSolutionEvidence (g : GodelSolutionFields) where
  metricGodelClosed : g.metricGodel
  closedTimelikeCurvesClosed : g.closedTimelikeCurves
  homogeneityClosed : g.homogeneity
  cosmologicalConstantPresentClosed : g.cosmologicalConstantPresent

theorem godel_solution_closed_from_evidence (g : GodelSolutionFields) (e : GodelSolutionEvidence g) :
    GodelSolutionClosed g := by
  exact And.intro e.metricGodelClosed
    (And.intro e.closedTimelikeCurvesClosed (And.intro e.homogeneityClosed e.cosmologicalConstantPresentClosed))

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse