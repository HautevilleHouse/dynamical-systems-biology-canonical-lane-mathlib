import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  nGenes : ℕ
  nGenesPos : nGenes > 0
  regulatoryMatrix : Type u
  dynamicsEquation : Prop
  fixedPoints : Set (Vector ℝ nGenes)
  fixedPointsNonempty : fixedPoints.Nonempty

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.dynamicsEquation ∧ G.fixedPointsNonempty

theorem gene_regulatory_network_closed (G : GeneRegulatoryNetworkPackage) : GeneRegulatoryNetworkClosed G :=
  And.intro G.dynamicsEquation G.fixedPointsNonempty

end DynamicalSystemsBiologyCanonicalLaneLean
end HautevilleHouse