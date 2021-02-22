module HelperSequences.A007955Spec (main, spec) where
import Test.Hspec
import HelperSequences.A007955 (a007955)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A007955" $
  it "correctly computes the first 20 elements" $
    take 20 (map a007955 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,8,5,36,7,64,27,100,11,1728,13,196,225,1024,17,5832,19,8000]
