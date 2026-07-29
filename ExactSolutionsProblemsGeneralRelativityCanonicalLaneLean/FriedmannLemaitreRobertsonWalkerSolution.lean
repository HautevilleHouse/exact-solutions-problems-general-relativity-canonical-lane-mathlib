import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

structure FLRWSolutionPackage where
  scaleFactor : ℝ → ℝ
  curvatureParameter : ℝ
  cosmologicalConstant : ℝ
  homogeneousIsotropic : Prop
  perfectFluidEnergyMomentum : Prop

structure FLRWSolutionEvidence (F : FLRWSolutionPackage) where
  homogeneousIsotropicClosed : F.homogeneousIsotropic
  perfectFluidEnergyMomentumClosed : F.perfectFluidEnergyMomentum

def FLRWSolutionClosed (F : FLRWSolutionPackage) : Prop :=
  F.homogeneousIsotropic ∧ F.perfectFluidEnergyMomentum

theorem flrw_solution_closed_from_evidence
    (F : FLRWSolutionPackage) (E : FLRWSolutionEvidence F) :
    FLRWSolutionClosed F := by
  exact And.intro E.homogeneousIsotropicClosed E.perfectFluidEnergyMomentumClosed

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse