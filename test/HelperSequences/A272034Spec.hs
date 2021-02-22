module HelperSequences.A272034Spec (main, spec) where
import Test.Hspec
import HelperSequences.A272034 (a272034)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A272034" $
  it "correctly computes the first 20 elements" $
    take 20 (map a272034 [0..]) `shouldBe` expectedValue where
      expectedValue = [1,2,4,8,16,32,36,38,64,128,256,512,1024,2048,2056,2080,2088,2090,4096,8192]
