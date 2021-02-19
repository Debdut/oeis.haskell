module TableDifferences.A333836Spec (main, spec) where
import Test.Hspec
import TableDifferences.A333836 (a333836)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A333836" $
  it "correctly computes the first 20 elements" $
    take 20 (map a333836 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,1,2,2,4,2,5,3,6,3,6,4,7,4,7,5,8,4,7,5]
