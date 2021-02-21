module GridPolytopes.A338322Spec (main, spec) where
import Test.Hspec
import GridPolytopes.A338322 (a338322)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A338322" $
  it "correctly computes the first 5 elements" $
    take 5 (map a338322 [0..]) `shouldBe` expectedValue where
      expectedValue = [0, 0, 0, 4, 32]
