#include <gtest/gtest.h>

#include "myproject/math.hpp"

TEST(MathTest, AddsPositiveNumbers) {
    EXPECT_EQ(myproject::add(2, 3), 5);
}

TEST(MathTest, AddsNegativeNumbers) {
    EXPECT_EQ(myproject::add(-2, -3), -5);
}

TEST(MathTest, AddsWithZero) {
    EXPECT_EQ(myproject::add(0, 7), 7);
}
