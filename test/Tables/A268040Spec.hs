module Tables.A268040Spec (main, spec) where
import Test.Hspec
import Tables.A268040 (a268040)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A268040" $
  it "correctly computes the first 20 elements" $
    take 20 (map a268040 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,0,1,0,0,2,0,1,2,3,0,0,0,2,4,0,1,0,1,4]
