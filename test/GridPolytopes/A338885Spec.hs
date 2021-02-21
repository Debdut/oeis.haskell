module GridPolytopes.A338885Spec (main, spec) where
import Test.Hspec
import GridPolytopes.A338885 (a338885)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A338885" $
  it "correctly computes the first 20 elements" $
    take 20 (map a338885 [2..]) `shouldBe` expectedValue where
      expectedValue = [2,3,4,5,4,5,7,6,9,10,5,7,8,11,13,7,8,10,13,16]
