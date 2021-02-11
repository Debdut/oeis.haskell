module AlecSequences.A273185Spec (main, spec) where
import Test.Hspec
import AlecSequences.A273185 (a273185)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A273185" $
  it "correctly computes the first 20 elements" $
    take 20 (map a273185 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,0,1,2,0,0,1,3,4,0,0,1,1,1,6,6,0,0,2]
