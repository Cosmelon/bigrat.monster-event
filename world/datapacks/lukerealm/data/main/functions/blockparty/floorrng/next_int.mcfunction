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

function main:blockparty/floorrng/lcg

scoreboard players operation ?temp bpFloor = #out bpFloor
scoreboard players operation #out bpFloor %= ?range bpFloor
scoreboard players operation ?temp bpFloor -= #out bpFloor
scoreboard players operation ?temp bpFloor += ?m1 bpFloor
execute if score ?temp blockParty matches ..-1 run function main:blockparty/floorrng/next_int