import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

structure ExactSolutionMetricField where
  metricName : String
  coordinateSystem : String
  lineElement : String
  ricciScalar : Prop
  einsteinTensor : Prop
  energyMomentumCompatible : Prop

structure ExactSolutionMetricFieldEvidence (m : ExactSolutionMetricField) where
  ricciScalarClosed : m.ricciScalar
  einsteinTensorClosed : m.einsteinTensor
  energyMomentumCompatibleClosed : m.energyMomentumCompatible

def ExactSolutionMetricFieldClosed (m : ExactSolutionMetricField) : Prop :=
  m.ricciScalar ∧ m.einsteinTensor ∧ m.energyMomentumCompatible

theorem exact_solution_metric_field_closed_from_evidence (m : ExactSolutionMetricField)
    (e : ExactSolutionMetricFieldEvidence m) : ExactSolutionMetricFieldClosed m := by
  exact And.intro e.ricciScalarClosed (And.intro e.einsteinTensorClosed e.energyMomentumCompatibleClosed)

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse