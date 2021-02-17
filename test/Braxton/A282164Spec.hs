module Braxton.A282164Spec (main, spec) where
import Test.Hspec
import Braxton.A282164 (a282164)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A282164" $
  it "correctly computes the first 20 elements" $
    take 17 (map a282164 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,2,4,6,12,24,48,120,240,720,1440,4320,8640,25920,60480]
