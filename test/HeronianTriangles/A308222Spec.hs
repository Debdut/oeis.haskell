module HeronianTriangles.A308222Spec (main, spec) where
import Test.Hspec
import HeronianTriangles.A308222 (a308222)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A308222" $
  it "correctly computes the first 10 elements" $
    take 10 (map a308222 [1..]) `shouldBe` expectedValue where
      expectedValue = [16, 18, 36, 50, 64, 98, 100, 144, 162, 196]
