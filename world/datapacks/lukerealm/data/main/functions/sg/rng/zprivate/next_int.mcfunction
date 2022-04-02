###
#    public int nextInt(int bound) {
#        if (bound <= 0)
#            throw new IllegalArgumentException(BadBound);
#
#        int r = next(31);
#        int m = bound - 1;
#        if ((bound & m) == 0)  // i.e., bound is a power of 2
#            r = (int)((bound * (long)r) >> 31);
#        else {
#            for (int u = r; u - (r = u % bound) + m < 0; u = next(31));
#        }
#        return r;
#    }

function main:sg/rng/lcg

scoreboard players operation #temp sgMath = out sgMath
scoreboard players operation out sgMath %= #range sgMath
scoreboard players operation #temp sgMath -= out sgMath
scoreboard players operation #temp sgMath += #m1 sgMath
execute if score #temp sgMath matches ..-1 run function main:sg/rng/zprivate/next_int