import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

structure KerrMetricPackage where
  mass : ℝ
  angularMomentum : ℝ
  eventHorizonOuter : ℝ
  eventHorizonInner : ℝ
  ergosphere : ℝ → ℝ
  stationary : Prop
  axisymmetric : Prop
  vacuumSolution : Prop
  asymptoticFlatness : Prop

structure KerrMetricEvidence (K : KerrMetricPackage) where
  stationaryClosed : K.stationary
  axisymmetricClosed : K.axisymmetric
  vacuumSolutionClosed : K.vacuumSolution
  asymptoticFlatnessClosed : K.asymptoticFlatness

def KerrMetricClosed (K : KerrMetricPackage) : Prop :=
  K.stationary ∧ K.axisymmetric ∧ K.vacuumSolution ∧ K.asymptoticFlatness

theorem kerr_metric_closed_from_evidence (K : KerrMetricPackage) (E : KerrMetricEvidence K) :
    KerrMetricClosed K := by
  exact And.intro E.stationaryClosed (And.intro E.axisymmetricClosed (And.intro E.vacuumSolutionClosed E.asymptoticFlatnessClosed))

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse
