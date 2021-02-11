module AlecSequences.A273190Spec (main, spec) where
import Test.Hspec
import AlecSequences.A273190 (a273190)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A273190" $
  it "correctly computes the first 20 elements" $
    take 20 (map a273190 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,0,1,1,1,1,1,1,2,1,1,1,2,2,2,2,1,1,2]
