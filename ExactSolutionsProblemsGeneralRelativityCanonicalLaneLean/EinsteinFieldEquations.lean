import ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean.StressEnergyTensor

/-!
# Einstein Field Equations Package
-/

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

structure EinsteinFieldEquationsPackage where
  metric : Type u
  ricciTensor : Type v
  scalarCurvature : Type w
  cosmologicalConstant : ℝ
  equationSatisfied : Prop
  equationSatisfiedClosed : equationSatisfied

structure EinsteinFieldEquationsEvidence (F : EinsteinFieldEquationsPackage) where
  equationSatisfiedClosed : F.equationSatisfied

def EinsteinFieldEquationsClosed (F : EinsteinFieldEquationsPackage) : Prop :=
  F.equationSatisfied

theorem einstein_field_equations_closed_from_evidence
    (F : EinsteinFieldEquationsPackage) (E : EinsteinFieldEquationsEvidence F) :
    EinsteinFieldEquationsClosed F := by
  exact E.equationSatisfiedClosed

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse
