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

function bp:colorrng/lcg

scoreboard players operation #temp blockPartyColor = out blockPartyColor
scoreboard players operation out blockPartyColor %= #range blockPartyColor
scoreboard players operation #temp blockPartyColor -= out blockPartyColor
scoreboard players operation #temp blockPartyColor += #m1 blockPartyColor
execute if score #temp blockPartyColor matches ..-1 run function bp:colorrng/next_int