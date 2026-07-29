import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

structure EinsteinVacuumEquationsPackage where
  spacetime : Type u
  metric : Type v
  ricciTensorVanishes : Prop
  stressEnergyTensorZero : Prop

structure EinsteinVacuumEquationsEvidence (E : EinsteinVacuumEquationsPackage) where
  ricciTensorVanishesClosed : E.ricciTensorVanishes
  stressEnergyTensorZeroClosed : E.stressEnergyTensorZero

def EinsteinVacuumEquationsClosed (E : EinsteinVacuumEquationsPackage) : Prop :=
  E.ricciTensorVanishes ∧ E.stressEnergyTensorZero

theorem einstein_vacuum_equations_closed_from_evidence
    (E : EinsteinVacuumEquationsPackage) (Ev : EinsteinVacuumEquationsEvidence E) :
    EinsteinVacuumEquationsClosed E := by
  exact And.intro Ev.ricciTensorVanishesClosed Ev.stressEnergyTensorZeroClosed

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse