module TableDifferences.A339010Spec (main, spec) where
import Test.Hspec
import TableDifferences.A339010 (a339010)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A339010" $
  it "correctly computes the first 20 elements" $
    take 20 (map a339010 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,0,1,1,1,2,1,2,3,2,1,5,1,2,5,3,1,6,1,5]
