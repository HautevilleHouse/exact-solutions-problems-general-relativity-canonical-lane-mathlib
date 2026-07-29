import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

structure VacuumFieldEquationsPackage where
  spacetimeManifold : Type u
  topology : TopologicalSpace spacetimeManifold
  smoothAtlas : Type v
  metricTensor : Type w
  ricciTensorVanishes : Prop
  cosmologicalConstantEqZero : Prop

structure VacuumFieldEquationsEvidence (V : VacuumFieldEquationsPackage) where
  ricciTensorVanishesClosed : V.ricciTensorVanishes
  cosmologicalConstantEqZeroClosed : V.cosmologicalConstantEqZero

def VacuumFieldEquationsClosed (V : VacuumFieldEquationsPackage) : Prop :=
  V.ricciTensorVanishes ∧ V.cosmologicalConstantEqZero

theorem vacuum_field_equations_closed_from_evidence
    (V : VacuumFieldEquationsPackage) (E : VacuumFieldEquationsEvidence V) :
    VacuumFieldEquationsClosed V := by
  exact And.intro E.ricciTensorVanishesClosed E.cosmologicalConstantEqZeroClosed

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse