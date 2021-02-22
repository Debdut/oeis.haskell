module HelperSequences.A051516Spec (main, spec) where
import Test.Hspec
import HelperSequences.A051516 (a051516)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A051516" $
  it "correctly computes the first 20 elements" $
    take 20 (map a051516 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,1,0,0]
