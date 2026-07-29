import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

structure SchwarzschildSolutionPackage where
  mass : ℝ
  schwarzschildRadius : ℝ
  sphericallySymmetric : Prop
  static : Prop
  vacuumSolution : Prop
  asymptoticFlatness : Prop
  singularityAtOrigin : Prop
  eventHorizonRegular : Prop

structure SchwarzschildSolutionEvidence (S : SchwarzschildSolutionPackage) where
  sphericallySymmetricClosed : S.sphericallySymmetric
  staticClosed : S.static
  vacuumSolutionClosed : S.vacuumSolution
  asymptoticFlatnessClosed : S.asymptoticFlatness
  singularityAtOriginClosed : S.singularityAtOrigin
  eventHorizonRegularClosed : S.eventHorizonRegular

def SchwarzschildSolutionClosed (S : SchwarzschildSolutionPackage) : Prop :=
  S.sphericallySymmetric ∧ S.static ∧ S.vacuumSolution ∧ S.asymptoticFlatness ∧ S.singularityAtOrigin ∧ S.eventHorizonRegular

theorem schwarzschild_solution_closed_from_evidence (S : SchwarzschildSolutionPackage) (E : SchwarzschildSolutionEvidence S) :
    SchwarzschildSolutionClosed S := by
  exact And.intro E.sphericallySymmetricClosed
    (And.intro E.staticClosed
      (And.intro E.vacuumSolutionClosed
        (And.intro E.asymptoticFlatnessClosed
          (And.intro E.singularityAtOriginClosed E.eventHorizonRegularClosed))))

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse
