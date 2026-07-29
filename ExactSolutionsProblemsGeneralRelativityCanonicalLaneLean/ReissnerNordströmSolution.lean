import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean.VacuumFieldEquations

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

structure ReissnerNordströmSolutionPackage {V : VacuumFieldEquationsPackage} where
  massParameter : ℝ
  electricCharge : ℝ
  sphericalSymmetry : Prop
  staticMetric : Prop
  electrovacFieldEquations : Prop
  metricLineElement : Prop

structure ReissnerNordströmSolutionEvidence {V : VacuumFieldEquationsPackage}
    (R : ReissnerNordströmSolutionPackage V) where
  sphericalSymmetryClosed : R.sphericalSymmetry
  staticMetricClosed : R.staticMetric
  electrovacFieldEquationsClosed : R.electrovacFieldEquations
  metricLineElementClosed : R.metricLineElement

def ReissnerNordströmSolutionClosed {V : VacuumFieldEquationsPackage}
    (R : ReissnerNordströmSolutionPackage V) : Prop :=
  R.sphericalSymmetry ∧ R.staticMetric ∧ R.electrovacFieldEquations ∧ R.metricLineElement

theorem reissner_nordström_solution_closed_from_evidence
    {V : VacuumFieldEquationsPackage} (R : ReissnerNordströmSolutionPackage V)
    (E : ReissnerNordströmSolutionEvidence R) : ReissnerNordströmSolutionClosed R := by
  exact And.intro E.sphericalSymmetryClosed
    (And.intro E.staticMetricClosed
      (And.intro E.electrovacFieldEquationsClosed E.metricLineElementClosed))

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse