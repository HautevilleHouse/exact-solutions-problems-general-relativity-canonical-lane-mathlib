import ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

structure AdmissibleClass where
  object : ExactSolutionsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ExactSolutionsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse
