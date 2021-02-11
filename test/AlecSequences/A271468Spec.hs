module AlecSequences.A271468Spec (main, spec) where
import Test.Hspec
import AlecSequences.A271468 (a271468)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A271468" $
  it "correctly computes the first 20 elements" $
    take 20 (map a271468 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,5,10,15,17,20,25,28,30,34,35,37,40,45,50,51,55,56,60,65]
