module TableDifferences.A333880Spec (main, spec) where
import Test.Hspec
import TableDifferences.A333880 (a333880)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A333880" $
  it "correctly computes the first 20 elements" $
    take 20 (map a333880 [2..]) `shouldBe` expectedValue where
      expectedValue = [0,1,1,1,0,2,2,2,0,1,1,1,0,3,3,1,0,2,1,2]
