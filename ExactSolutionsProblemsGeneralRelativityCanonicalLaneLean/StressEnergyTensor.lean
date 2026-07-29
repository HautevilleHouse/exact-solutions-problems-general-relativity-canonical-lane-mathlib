import ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean.MetricSignaturePackage

/-!
# Stress-Energy Tensor Package
-/

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

structure StressEnergyTensorPackage {F : EinsteinFieldEquationsPackage}
    (M : MetricSignaturePackage F) where
  stressEnergyTensor : Type u
  energyConditions : Prop
  matterModelSpecified : Prop
  energyConditionsClosed : energyConditions

structure StressEnergyTensorEvidence {F : EinsteinFieldEquationsPackage}
    {M : MetricSignaturePackage F} (S : StressEnergyTensorPackage M) where
  energyConditionsClosed : S.energyConditions

def StressEnergyTensorClosed {F : EinsteinFieldEquationsPackage}
    {M : MetricSignaturePackage F} (S : StressEnergyTensorPackage M) : Prop :=
  S.energyConditions

theorem stress_energy_tensor_closed_from_evidence
    {F : EinsteinFieldEquationsPackage} {M : MetricSignaturePackage F}
    (S : StressEnergyTensorPackage M) (E : StressEnergyTensorEvidence S) :
    StressEnergyTensorClosed S := by
  exact E.energyConditionsClosed

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse
