module Braxton.A284433Spec (main, spec) where
import Test.Hspec
import Braxton.A284433 (a284433)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A284433" $
  it "correctly computes the first 5 elements" $
    take 5 (map a284433 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,6,2,18]
