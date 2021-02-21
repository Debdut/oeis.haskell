module GridPolytopes.A334881Spec (main, spec) where
import Test.Hspec
import GridPolytopes.A334881 (a334881)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A334881" $
  it "correctly computes the first 5 elements" $
    take 5 (map a334881 [0..]) `shouldBe` expectedValue where
      expectedValue = [0, 0, 6, 54, 240]
