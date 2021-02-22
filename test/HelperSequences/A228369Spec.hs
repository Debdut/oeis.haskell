module HelperSequences.A228369Spec (main, spec) where
import Test.Hspec
import HelperSequences.A228369 (a228369)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A228369" $
  it "correctly computes the first 20 elements" $
    take 20 (map a228369 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,1,2,1,1,1,1,2,2,1,3,1,1,1,1,1,1,2,1]
