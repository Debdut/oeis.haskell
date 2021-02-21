module Tables.A284530Spec (main, spec) where
import Test.Hspec
import Tables.A284530 (a284530)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A284530" $
  it "correctly computes the first 20 elements" $
    take 20 (map a284530 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,5,18,19,24,26,82,84,97,100,114,125,133,179,197,202,249,267]
