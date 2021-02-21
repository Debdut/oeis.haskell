module GridPolytopes.A338886Spec (main, spec) where
import Test.Hspec
import GridPolytopes.A338886 (a338886)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A338886" $
  it "correctly computes the first 20 elements" $
    take 20 (map a338886 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,1,1,2,3,3,5,6,7,9,12,11,15,15,16,19,24,20,28,25]
