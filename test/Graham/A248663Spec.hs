module Graham.A248663Spec (main, spec) where
import Test.Hspec
import Graham.A248663 (a248663)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A248663" $
  it "correctly computes the first 20 elements" $
    take 20 (map a248663 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,1,2,0,4,3,8,1,0,5,16,2,32,9,6,0,64,1,128,4]
