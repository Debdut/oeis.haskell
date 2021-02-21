module GridPolytopes.A338323Spec (main, spec) where
import Test.Hspec
import GridPolytopes.A338323 (a338323)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A338323" $
  it "correctly computes the first 5 elements" $
    take 5 (map a338323 [0..]) `shouldBe` expectedValue where
      expectedValue = [0, 0, 14, 138, 640]
