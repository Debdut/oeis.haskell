module HeronianTriangles.A305703Spec (main, spec) where
import Test.Hspec
import HeronianTriangles.A305703 (a305703)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A305703" $
  it "correctly computes the first 20 elements" $
    take 20 (map a305703 [1..]) `shouldBe` expectedValue where
      expectedValue = [2,4,6,8,10,14,20,22,26,28,34,38,46,52,58,62,74,82,86,92]
