module AlecSequences.A271504Spec (main, spec) where
import Test.Hspec
import AlecSequences.A271504 (a271504)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A271504" $
  it "correctly computes the first 10 elements" $
    take 10 (map a271504 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,6,2,60,2,210,2,630]
