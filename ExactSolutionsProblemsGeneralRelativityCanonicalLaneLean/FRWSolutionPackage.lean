import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

structure FRWSolutionFields where
  scaleFactor : ℝ → ℝ
  curvatureParameter : ℝ
  cosmologicalConstant : ℝ
  metricFRW : Prop
  friedmannEquations : Prop
  energyConservation : Prop

def FRWSolutionClosed (f : FRWSolutionFields) : Prop :=
  f.metricFRW ∧ f.friedmannEquations ∧ f.energyConservation

structure FRWSolutionEvidence (f : FRWSolutionFields) where
  metricFRWClosed : f.metricFRW
  friedmannEquationsClosed : f.friedmannEquations
  energyConservationClosed : f.energyConservation

theorem frw_solution_closed_from_evidence (f : FRWSolutionFields) (e : FRWSolutionEvidence f) :
    FRWSolutionClosed f := by
  exact And.intro e.metricFRWClosed (And.intro e.friedmannEquationsClosed e.energyConservationClosed)

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse