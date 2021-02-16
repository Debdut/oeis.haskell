module External.A033877Spec (main, spec) where
import Test.Hspec
import External.A033877 (a033877)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A033877" $
  it "correctly computes the first 20 elements" $
    map a033877 [1..20] `shouldBe` expectedValue where
      expectedValue = [1, 1, 2, 1, 4, 6, 1, 6, 16, 22, 1, 8, 30, 68, 90, 1, 10, 48, 146, 304]
