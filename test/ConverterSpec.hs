module ConverterSpec (main, spec) where

import           Test.Hspec
import           Test.QuickCheck

import           Converter       (convert)

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "convert" $ do
        context "when the given integer is not positive" $ do
            it "returns an error message \"The integer must be positive!\"" $ do
                property $ \num -> convert (- abs num) === Left "The integer must be positive!"
        context "when the given integer is positive" $ do
            it "returns its roman numeral representation" $ do
                convert 1    `shouldBe` Right      "I"
                convert 2    `shouldBe` Right     "II"
                convert 3    `shouldBe` Right    "III"
                convert 4    `shouldBe` Right     "IV"
                convert 5    `shouldBe` Right      "V"
                convert 6    `shouldBe` Right     "VI"
                convert 7    `shouldBe` Right    "VII"
                convert 8    `shouldBe` Right   "VIII"
                convert 9    `shouldBe` Right     "IX"
                convert 10   `shouldBe` Right      "X"
                convert 20   `shouldBe` Right     "XX"
                convert 30   `shouldBe` Right    "XXX"
                convert 40   `shouldBe` Right     "XL"
                convert 50   `shouldBe` Right      "L"
                convert 60   `shouldBe` Right     "LX"
                convert 70   `shouldBe` Right    "LXX"
                convert 80   `shouldBe` Right   "LXXX"
                convert 90   `shouldBe` Right     "XC"
                convert 100  `shouldBe` Right      "C"
                convert 200  `shouldBe` Right     "CC"
                convert 300  `shouldBe` Right    "CCC"
                convert 400  `shouldBe` Right     "CD"
                convert 500  `shouldBe` Right      "D"
                convert 600  `shouldBe` Right     "DC"
                convert 700  `shouldBe` Right    "DCC"
                convert 800  `shouldBe` Right   "DCCC"
                convert 900  `shouldBe` Right     "CM"
                convert 1000 `shouldBe` Right      "M"
                convert 2000 `shouldBe` Right     "MM"
                convert 3000 `shouldBe` Right    "MMM"
                convert 4000 `shouldBe` Right   "MMMM"
                convert 1990 `shouldBe` Right  "MCMXC"
                convert 2008 `shouldBe` Right "MMVIII"
                convert 99   `shouldBe` Right   "XCIX"
                convert 47   `shouldBe` Right  "XLVII"
