import ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean.EinsteinFieldEquations

/-!
# Metric Signature Package
-/

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

structure MetricSignaturePackage (F : EinsteinFieldEquationsPackage) where
  lorentzianMetric : Type u
  timeOrientation : Prop
  signatureConstant : (−,+,+,+)
  timeOrientationClosed : timeOrientation

structure MetricSignatureEvidence {F : EinsteinFieldEquationsPackage}
    (M : MetricSignaturePackage F) where
  timeOrientationClosed : M.timeOrientation

def MetricSignatureClosed {F : EinsteinFieldEquationsPackage}
    (M : MetricSignaturePackage F) : Prop :=
  M.timeOrientation

theorem metric_signature_closed_from_evidence
    {F : EinsteinFieldEquationsPackage} (M : MetricSignaturePackage F)
    (E : MetricSignatureEvidence M) : MetricSignatureClosed M := by
  exact E.timeOrientationClosed

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse
