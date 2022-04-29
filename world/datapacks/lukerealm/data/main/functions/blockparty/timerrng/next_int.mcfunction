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

function bp:timerrng/lcg

scoreboard players operation #temp blockPartyTimer = out blockPartyTimer
scoreboard players operation out blockPartyTimer %= #range blockPartyTimer
scoreboard players operation #temp blockPartyTimer -= out blockPartyTimer
scoreboard players operation #temp blockPartyTimer += #m1 blockPartyTimer
execute if score #temp blockPartyTimer matches ..-1 run function bp:timerrng/next_int