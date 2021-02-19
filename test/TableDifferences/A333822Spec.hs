module TableDifferences.A333822Spec (main, spec) where
import Test.Hspec
import TableDifferences.A333822 (a333822)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A333822" $
  it "correctly computes the first 20 elements" $
    take 20 (map a333822 [2..]) `shouldBe` expectedValue where
      expectedValue = [1,3,3,5,4,6,4,8,5,7,6,8,5,10,7,9,6,8,6,13]
