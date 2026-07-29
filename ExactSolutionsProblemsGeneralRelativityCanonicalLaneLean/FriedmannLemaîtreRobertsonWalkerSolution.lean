import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean.VacuumFieldEquations

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

structure FLRWSolutionPackage (V : VacuumFieldEquationsPackage) where
  scaleFactor : ℝ → ℝ
  curvatureParameter : ℝ
  cosmologicalConstant : ℝ
  homogeneity : Prop
  isotropy : Prop
  metricLineElement : Prop

structure FLRWSolutionEvidence {V : VacuumFieldEquationsPackage}
    (F : FLRWSolutionPackage V) where
  homogeneityClosed : F.homogeneity
  isotropyClosed : F.isotropy
  metricLineElementClosed : F.metricLineElement

def FLRWSolutionClosed {V : VacuumFieldEquationsPackage}
    (F : FLRWSolutionPackage V) : Prop :=
  F.homogeneity ∧ F.isotropy ∧ F.metricLineElement

theorem flrw_solution_closed_from_evidence
    {V : VacuumFieldEquationsPackage} (F : FLRWSolutionPackage V)
    (E : FLRWSolutionEvidence F) : FLRWSolutionClosed F := by
  exact And.intro E.homogeneityClosed
    (And.intro E.isotropyClosed E.metricLineElementClosed)

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse