module Graham.A277494Spec (main, spec) where
import Test.Hspec
import Graham.A277494 (a277494)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A277494" $
  it "correctly computes the first 36 elements" $
    take 36 (map a277494 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,4,6,9,10,12,14,8,16,15,22,18,26,21,20,24,34,25,38,28,30,33,46,32,35,39,27,36,58,40,62,45,44,51,42]
