import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean.KerrSolution

namespace HautevilleHouse
namespace ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean

structure StationaryAxisymmetricReductionPackage (K : KerrSolutionPackage) where
  eropotential : Type u
  ergosphereGeometry : Type v
  reductionConsistent : Prop
  uniquenessProvided : Prop

structure StationaryAxisymmetricReductionEvidence {K : KerrSolutionPackage}
    (R : StationaryAxisymmetricReductionPackage K) where
  reductionConsistentClosed : R.reductionConsistent
  uniquenessProvidedClosed : R.uniquenessProvided

def StationaryAxisymmetricReductionClosed {K : KerrSolutionPackage}
    (R : StationaryAxisymmetricReductionPackage K) : Prop :=
  R.reductionConsistent ∧ R.uniquenessProvided

theorem stationary_axisymmetric_reduction_closed_from_evidence
    {K : KerrSolutionPackage} (R : StationaryAxisymmetricReductionPackage K)
    (E : StationaryAxisymmetricReductionEvidence R) :
    StationaryAxisymmetricReductionClosed R := by
  exact And.intro E.reductionConsistentClosed E.uniquenessProvidedClosed

end ExactSolutionsProblemsGeneralRelativityCanonicalLaneLean
end HautevilleHouse