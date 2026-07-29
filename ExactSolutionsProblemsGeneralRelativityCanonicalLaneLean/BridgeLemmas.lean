import ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ExactSolutionsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse
