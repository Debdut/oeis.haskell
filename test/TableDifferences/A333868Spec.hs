module TableDifferences.A333868Spec (main, spec) where
import Test.Hspec
import TableDifferences.A333868 (a333868)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A333868" $
  it "correctly computes the first 20 elements" $
    take 20 (map a333868 [2..]) `shouldBe` expectedValue where
      expectedValue = [1,3,3,4,5,4,3,6,7,4,4,4,5,9,4,4,5,5,7,9]
