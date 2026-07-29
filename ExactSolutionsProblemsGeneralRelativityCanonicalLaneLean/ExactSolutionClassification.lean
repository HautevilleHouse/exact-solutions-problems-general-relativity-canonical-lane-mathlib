import ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean.EinsteinFieldEquations

/-!
# Exact Solution Classification Package
-/

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

structure ExactSolutionClassificationPackage {F : EinsteinFieldEquationsPackage}
    {M : MetricSignaturePackage F} {S : StressEnergyTensorPackage M}
    (E : EinsteinFieldEquationsPackage) where
  solutionType : String
  symmetries : Prop
  petrovType : String
  algebraicSpecialization : Prop
  symmetriesClosed : symmetries
  algebraicSpecializationClosed : algebraicSpecialization

structure ExactSolutionClassificationEvidence {F : EinsteinFieldEquationsPackage}
    {M : MetricSignaturePackage F} {S : StressEnergyTensorPackage M}
    {E : EinsteinFieldEquationsPackage}
    (C : ExactSolutionClassificationPackage E) where
  symmetriesClosed : C.symmetries
  algebraicSpecializationClosed : C.algebraicSpecialization

def ExactSolutionClassificationClosed {F : EinsteinFieldEquationsPackage}
    {M : MetricSignaturePackage F} {S : StressEnergyTensorPackage M}
    {E : EinsteinFieldEquationsPackage}
    (C : ExactSolutionClassificationPackage E) : Prop :=
  C.symmetries ∧ C.algebraicSpecialization

theorem exact_solution_classification_closed_from_evidence
    {F : EinsteinFieldEquationsPackage} {M : MetricSignaturePackage F}
    {S : StressEnergyTensorPackage M} {E : EinsteinFieldEquationsPackage}
    (C : ExactSolutionClassificationPackage E)
    (Ev : ExactSolutionClassificationEvidence C) : ExactSolutionClassificationClosed C := by
  exact And.intro Ev.symmetriesClosed Ev.algebraicSpecializationClosed

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse
