module HeronianTriangles.A305717Spec (main, spec) where
import Test.Hspec
import HeronianTriangles.A305717 (a305717)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A305717" $
  it "correctly computes the first 20 elements" $
    take 20 (map a305717 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,1,1,1,2,4,1,2,1,3,2,4,1,3,5,1,1,2,5]
