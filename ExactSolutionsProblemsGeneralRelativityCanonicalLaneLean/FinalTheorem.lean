import ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

def ConstrainedExactSolutionsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_exact_solutions_endgame (A : AdmissibleClass) :
    ConstrainedExactSolutionsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse
