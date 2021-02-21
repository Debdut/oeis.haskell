module Tables.A272327Spec (main, spec) where
import Test.Hspec
import Tables.A272327 (a272327)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A272327" $
  it "correctly computes the first 20 elements" $
    take 20 (map a272327 [1..]) `shouldBe` expectedValue where
      expectedValue = [2,4,2,6,4,2,8,6,4,2,10,6,6,4,2,12,10,6,6,4]
