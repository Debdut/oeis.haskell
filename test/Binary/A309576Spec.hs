module Binary.A309576Spec (main, spec) where
import Test.Hspec
import Binary.A309576 (a309576)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A309576" $
  it "correctly computes the first 20 elements" $
      map a309576 [1..20] `shouldBe` expectedValue where
        expectedValue = [0, 1, 0, 0, 2, 0, 1, 3, 0, 0, 0, 4, 0, 1, 1, 5, 0, 0, 2, 6]
