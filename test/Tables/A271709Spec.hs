module Tables.A271709Spec (main, spec) where
import Test.Hspec
import Tables.A271709 (a271709)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A271709" $
  it "correctly computes the first 20 elements" $
    take 20 (map a271709 [0..]) `shouldBe` expectedValue where
      expectedValue = [2,3,3,5,4,5,9,6,6,9,17,10,8,10,17,33,18,12,12,18]
