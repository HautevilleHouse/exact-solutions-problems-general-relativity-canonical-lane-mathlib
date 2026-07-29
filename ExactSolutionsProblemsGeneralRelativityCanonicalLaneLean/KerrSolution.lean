import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

structure KerrSolutionPackage where
  mass : ℝ
  angularMomentum : ℝ
  ergosphere : Type u
  stationaryAxiallySymmetric : Prop
  vacuumSolution : Prop

structure KerrSolutionEvidence (K : KerrSolutionPackage) where
  stationaryAxiallySymmetricClosed : K.stationaryAxiallySymmetric
  vacuumSolutionClosed : K.vacuumSolution

def KerrSolutionClosed (K : KerrSolutionPackage) : Prop :=
  K.stationaryAxiallySymmetric ∧ K.vacuumSolution

theorem kerr_solution_closed_from_evidence
    (K : KerrSolutionPackage) (E : KerrSolutionEvidence K) :
    KerrSolutionClosed K := by
  exact And.intro E.stationaryAxiallySymmetricClosed E.vacuumSolutionClosed

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse