module ProjectEuler.A085731Spec (main, spec) where
import Test.Hspec
import ProjectEuler.A085731 (a085731)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A085731" $
  it "correctly computes the first 20 elements" $
    take 20 (map a085731 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,1,4,1,1,1,4,3,1,1,4,1,1,1,16,1,3,1,4]
