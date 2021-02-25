module ProjectEuler.A268681Spec (main, spec) where
import Test.Hspec
import ProjectEuler.A268681 (a268681)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A268681" $
  it "correctly computes the first 20 elements" $
    take 20 (map a268681 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,3,6,12,27,42,105,175,175,385,1408,1474,2566,8677,15607,15607,39934,39934,133300]
