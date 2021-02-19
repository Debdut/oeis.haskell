module Graham.A259527Spec (main, spec) where
import Test.Hspec
import Graham.A259527 (a259527)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A259527" $
  it "correctly computes the first 20 elements" $
    take 20 (map a259527 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,2,1,2,2,2,2,1,2,8,2,16,2,2,1,64,2,128,4]
