module AlecSequences.A271328Spec (main, spec) where
import Test.Hspec
import AlecSequences.A271328 (a271328)

main :: IO ()
main = hspec spec

spec = describe "A271328" $
  it "correctly computes the first 20 elements" $
    take 20 (map a271328 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,5,10,17,28,37,50,65,82,106,122,145,170,197,228,257,294,325,362,406]
