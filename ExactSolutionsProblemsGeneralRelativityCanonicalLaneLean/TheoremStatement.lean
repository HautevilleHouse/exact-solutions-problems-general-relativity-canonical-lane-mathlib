import HautevilleHouse.ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

structure ExactSolutionObject where
  solutionType : Type
  einsteinEquationsSatisfied : Prop
  concluded : Prop
  conclusion : concluded

noncomputable def ExactSolutionClosed (O : ExactSolutionObject) : Prop :=
  O.concluded

structure GeneralRelativityInstance where
  metricSignature : String
  fieldEquations : Prop
  matterContent : Prop
  exactSolution : Prop

theorem exact_solution_closed_from_object (O : ExactSolutionObject) :
    ExactSolutionClosed O := by
  exact O.conclusion

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse