module GridPolytopes.A102698Spec (main, spec) where
import Test.Hspec
import GridPolytopes.A102698 (a102698)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A102698" $
  it "correctly computes the first 5 elements" $
    take 5 (map a102698 [1..]) `shouldBe` expectedValue where
      expectedValue = [8, 80, 368, 1264, 3448]
