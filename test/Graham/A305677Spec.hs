module Graham.A305677Spec (main, spec) where
import Test.Hspec
import Graham.A305677 (a305677)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A305677" $
  it "correctly computes the first 20 elements" $
    map a305677 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,2,8,1,64,256,2048,4,1,131072,262144,32,8388608,33554432,134217728,1,2147483648,8,34359738368,1024]
