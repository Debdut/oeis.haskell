module HeronianTriangles.A298614Spec (main, spec) where
import Test.Hspec
import HeronianTriangles.A298614 (a298614)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A298614" $
  it "correctly computes the first 20 elements" $
    take 20 (map a298614 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,1,1,1,2,1,2,1,1,2,3,1,1,3,1,1,2,1,1]
