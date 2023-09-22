#######################################################################################################################################################################################################
#
# Borrowed from EmeraldMath.Stats
#
#######################################################################################################################################################################################################
"""

    nanmax(x::Array)
    nanmax(x::Number)

Return the maximum of array ommiting the NaN, given
- `x` Array of numbers, can be NaN

"""
function nanmax end

nanmax(x::Array) = (
    _x = filter(!isnan, x);

    return length(_x) == 0 ? NaN : maximum( _x )
);

nanmax(x::Number) = isnan(x) ? NaN : x;


"""

    nanmin(x::Array)
    nanmin(x::Number)

Return the maximum of array ommiting the NaN, given
- `x` Array of numbers, can be NaN

"""
function nanmin end
nanmin(x::Array) = (
    _x = filter(!isnan, x);

    return length(_x) == 0 ? NaN : minimum( _x )
);

nanmin(x::Number) = isnan(x) ? NaN : x;
