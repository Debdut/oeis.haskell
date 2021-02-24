module HeronianTriangles.A306991Spec (main, spec) where
import Test.Hspec
import HeronianTriangles.A306991 (a306991)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A306991" $
  it "correctly computes the first 10 elements" $
    take 10 (map a306991 [1..]) `shouldBe` expectedValue where
      expectedValue = [1, 1, 1, 2, 2, 3, 2, 2, 3, 3]
