module HeronianTriangles.A305704Spec (main, spec) where
import Test.Hspec
import HeronianTriangles.A305704 (a305704)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A305704" $
  it "correctly computes the first 20 elements" $
    take 20 (map a305704 [1..]) `shouldBe` expectedValue where
      expectedValue = [6, 8, 9, 12, 15, 16, 18, 20, 21, 22, 24, 25, 27, 28, 30, 32, 33, 34, 35, 36]
