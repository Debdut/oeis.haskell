module AlecSequences.A270536Spec (main, spec) where
import Test.Hspec
import AlecSequences.A270536 (a270536)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A270536" $
  it "correctly computes the first 20 elements" $
    take 20 (map a270536 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,0,0,6,0,15,6,22,28,45,33,66,35,64,74,104,102,140,129,160]
