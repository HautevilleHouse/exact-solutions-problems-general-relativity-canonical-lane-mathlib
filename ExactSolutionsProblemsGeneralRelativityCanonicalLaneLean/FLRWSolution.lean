import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean.EinsteinFieldEquations

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

structure FLRWSolutionPackage (E : EinsteinFieldEquationsPackage) where
  scaleFactor : ℝ → ℝ
  spatialCurvature : ℝ
  energyDensity : ℝ → ℝ
  pressure : ℝ → ℝ
  cosmologicalConstant : ℝ
  homogeneity : Prop
  isotropy : Prop
  perfectFluid : Prop
  friedmannEquations : Prop

structure FLRWSolutionEvidence {E : EinsteinFieldEquationsPackage}
    (F : FLRWSolutionPackage E) where
  homogeneityClosed : F.homogeneity
  isotropyClosed : F.isotropy
  perfectFluidClosed : F.perfectFluid
  friedmannEquationsClosed : F.friedmannEquations

def FLRWSolutionClosed {E : EinsteinFieldEquationsPackage}
    (F : FLRWSolutionPackage E) : Prop :=
  F.homogeneity ∧ F.isotropy ∧ F.perfectFluid ∧ F.friedmannEquations

theorem flrw_solution_closed_from_evidence
    {E : EinsteinFieldEquationsPackage} (F : FLRWSolutionPackage E)
    (Ev : FLRWSolutionEvidence F) : FLRWSolutionClosed F := by
  exact And.intro Ev.homogeneityClosed
    (And.intro Ev.isotropyClosed
      (And.intro Ev.perfectFluidClosed Ev.friedmannEquationsClosed))

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse