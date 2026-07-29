import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

structure FriedmannEquationsPackage where
  scaleFactor : ℝ → ℝ
  hubbleParameter : ℝ → ℝ
  energyDensity : ℝ → ℝ
  pressure : ℝ → ℝ
  curvatureParameter : ℝ
  cosmologicalConstant : ℝ
  firstEquation : Prop
  secondEquation : Prop
  fluidEquation : Prop
  spatiallyHomogeneous : Prop
  isotropic : Prop

structure FriedmannEquationsEvidence (F : FriedmannEquationsPackage) where
  firstEquationClosed : F.firstEquation
  secondEquationClosed : F.secondEquation
  fluidEquationClosed : F.fluidEquation
  spatiallyHomogeneousClosed : F.spatiallyHomogeneous
  isotropicClosed : F.isotropic

def FriedmannEquationsClosed (F : FriedmannEquationsPackage) : Prop :=
  F.firstEquation ∧ F.secondEquation ∧ F.fluidEquation ∧ F.spatiallyHomogeneous ∧ F.isotropic

theorem friedmann_equations_closed_from_evidence (F : FriedmannEquationsPackage) (E : FriedmannEquationsEvidence F) :
    FriedmannEquationsClosed F := by
  exact And.intro E.firstEquationClosed
    (And.intro E.secondEquationClosed
      (And.intro E.fluidEquationClosed
        (And.intro E.spatiallyHomogeneousClosed E.isotropicClosed)))

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse
