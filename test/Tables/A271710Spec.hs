module Tables.A271710Spec (main, spec) where
import Test.Hspec
import Tables.A271710 (a271710)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A271710" $
  it "correctly computes the first 20 elements" $
    take 20 (map a271710 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,3,3,5,0,5,9,6,6,9,17,10,0,10,17,33,18,12,12,18]
