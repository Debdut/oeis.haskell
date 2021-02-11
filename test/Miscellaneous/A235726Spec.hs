module  Miscellaneous.A235726Spec (main, spec) where
import Test.Hspec
import  Miscellaneous.A235726 (a235726)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A235726" $
  it "correctly computes the first 20 elements" $
    take 20 (map a235726 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,1,2,1,2,1,3,1,2,1,2,1,2,1,4,1,2,1,3]
