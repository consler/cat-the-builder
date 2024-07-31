.class public final Lcom/badlogic/gdx/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/math/MathUtils$Sin;
    }
.end annotation


# static fields
.field private static final BIG_ENOUGH_CEIL:D = 16384.999999999996

.field private static final BIG_ENOUGH_FLOOR:D = 16384.0

.field private static final BIG_ENOUGH_INT:I = 0x4000

.field private static final BIG_ENOUGH_ROUND:D = 16384.5

.field private static final CEIL:D = 0.9999999

.field public static final E:F = 2.7182817f

.field public static final FLOAT_ROUNDING_ERROR:F = 1.0E-6f

.field public static final PI:F = 3.1415927f

.field public static final PI2:F = 6.2831855f

.field private static final SIN_BITS:I = 0xe

.field private static final SIN_COUNT:I = 0x4000

.field private static final SIN_MASK:I = 0x3fff

.field private static final degFull:F = 360.0f

.field public static final degRad:F = 0.017453292f

.field private static final degToIndex:F = 45.511112f

.field public static final degreesToRadians:F = 0.017453292f

.field public static final nanoToSec:F = 1.0E-9f

.field public static final radDeg:F = 57.295776f

.field private static final radFull:F = 6.2831855f

.field private static final radToIndex:F = 2607.5945f

.field public static final radiansToDegrees:F = 57.295776f

.field public static random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Lcom/badlogic/gdx/math/RandomXS128;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/RandomXS128;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static atan2(FF)F
    .locals 7
    .param p0, "y"    # F
    .param p1, "x"    # F

    .line 87
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const v2, 0x3fc90fdb

    if-nez v1, :cond_2

    .line 88
    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    return v2

    .line 89
    :cond_0
    cmpl-float v1, p0, v0

    if-nez v1, :cond_1

    return v0

    .line 90
    :cond_1
    const v0, -0x4036f025

    return v0

    .line 92
    :cond_2
    div-float v1, p0, p1

    .line 93
    .local v1, "z":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    const v5, 0x40490fdb    # (float)Math.PI

    const v6, 0x3e8f5c29    # 0.28f

    if-gez v3, :cond_5

    .line 94
    mul-float/2addr v6, v1

    mul-float/2addr v6, v1

    add-float/2addr v6, v4

    div-float v2, v1, v6

    .line 95
    .local v2, "atan":F
    cmpg-float v3, p1, v0

    if-gez v3, :cond_4

    cmpg-float v0, p0, v0

    if-gez v0, :cond_3

    const v5, -0x3fb6f025

    :cond_3
    add-float/2addr v5, v2

    return v5

    .line 96
    :cond_4
    return v2

    .line 98
    .end local v2    # "atan":F
    :cond_5
    mul-float v3, v1, v1

    add-float/2addr v3, v6

    div-float v3, v1, v3

    sub-float/2addr v2, v3

    .line 99
    .restart local v2    # "atan":F
    cmpg-float v0, p0, v0

    if-gez v0, :cond_6

    sub-float v0, v2, v5

    goto :goto_0

    :cond_6
    move v0, v2

    :goto_0
    return v0
.end method

.method public static ceil(F)I
    .locals 4
    .param p0, "value"    # F

    .line 320
    float-to-double v0, p0

    const-wide/high16 v2, 0x40d0000000000000L    # 16384.0

    sub-double/2addr v2, v0

    double-to-int v0, v2

    rsub-int v0, v0, 0x4000

    return v0
.end method

.method public static ceilPositive(F)I
    .locals 4
    .param p0, "value"    # F

    .line 326
    float-to-double v0, p0

    const-wide v2, 0x3fefffffca501acbL    # 0.9999999

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static clamp(DDD)D
    .locals 1
    .param p0, "value"    # D
    .param p2, "min"    # D
    .param p4, "max"    # D

    .line 240
    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    return-wide p2

    .line 241
    :cond_0
    cmpl-double v0, p0, p4

    if-lez v0, :cond_1

    return-wide p4

    .line 242
    :cond_1
    return-wide p0
.end method

.method public static clamp(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 234
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    .line 235
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    return p2

    .line 236
    :cond_1
    return p0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 222
    if-ge p0, p1, :cond_0

    return p1

    .line 223
    :cond_0
    if-le p0, p2, :cond_1

    return p2

    .line 224
    :cond_1
    return p0
.end method

.method public static clamp(JJJ)J
    .locals 1
    .param p0, "value"    # J
    .param p2, "min"    # J
    .param p4, "max"    # J

    .line 228
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    return-wide p2

    .line 229
    :cond_0
    cmp-long v0, p0, p4

    if-lez v0, :cond_1

    return-wide p4

    .line 230
    :cond_1
    return-wide p0
.end method

.method public static clamp(SSS)S
    .locals 0
    .param p0, "value"    # S
    .param p1, "min"    # S
    .param p2, "max"    # S

    .line 216
    if-ge p0, p1, :cond_0

    return p1

    .line 217
    :cond_0
    if-le p0, p2, :cond_1

    return p2

    .line 218
    :cond_1
    return p0
.end method

.method public static cos(F)F
    .locals 3
    .param p0, "radians"    # F

    .line 69
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const v1, 0x3fc90fdb

    add-float/2addr v1, p0

    const v2, 0x4522f983

    mul-float/2addr v1, v2

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x3fff

    aget v0, v0, v1

    return v0
.end method

.method public static cosDeg(F)F
    .locals 3
    .param p0, "degrees"    # F

    .line 79
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v1, p0

    const v2, 0x42360b61

    mul-float/2addr v1, v2

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x3fff

    aget v0, v0, v1

    return v0
.end method

.method public static floor(F)I
    .locals 4
    .param p0, "value"    # F

    .line 308
    float-to-double v0, p0

    const-wide/high16 v2, 0x40d0000000000000L    # 16384.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, -0x4000

    return v0
.end method

.method public static floorPositive(F)I
    .locals 1
    .param p0, "value"    # F

    .line 314
    float-to-int v0, p0

    return v0
.end method

.method public static isEqual(FF)Z
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 355
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x358637bd    # 1.0E-6f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEqual(FFF)Z
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "tolerance"    # F

    .line 363
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPowerOfTwo(I)Z
    .locals 1
    .param p0, "value"    # I

    .line 210
    if-eqz p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isZero(F)Z
    .locals 2
    .param p0, "value"    # F

    .line 342
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x358637bd    # 1.0E-6f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isZero(FF)Z
    .locals 1
    .param p0, "value"    # F
    .param p1, "tolerance"    # F

    .line 348
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static lerp(FFF)F
    .locals 1
    .param p0, "fromValue"    # F
    .param p1, "toValue"    # F
    .param p2, "progress"    # F

    .line 249
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static lerpAngle(FFF)F
    .locals 3
    .param p0, "fromRadians"    # F
    .param p1, "toRadians"    # F
    .param p2, "progress"    # F

    .line 281
    sub-float v0, p1, p0

    const v1, 0x40c90fdb

    add-float/2addr v0, v1

    const v2, 0x40490fdb    # (float)Math.PI

    add-float/2addr v0, v2

    rem-float/2addr v0, v1

    sub-float/2addr v0, v2

    .line 282
    .local v0, "delta":F
    mul-float v2, v0, p2

    add-float/2addr v2, p0

    add-float/2addr v2, v1

    rem-float/2addr v2, v1

    return v2
.end method

.method public static lerpAngleDeg(FFF)F
    .locals 3
    .param p0, "fromDegrees"    # F
    .param p1, "toDegrees"    # F
    .param p2, "progress"    # F

    .line 293
    sub-float v0, p1, p0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    const/high16 v2, 0x43340000    # 180.0f

    add-float/2addr v0, v2

    rem-float/2addr v0, v1

    sub-float/2addr v0, v2

    .line 294
    .local v0, "delta":F
    mul-float v2, v0, p2

    add-float/2addr v2, p0

    add-float/2addr v2, v1

    rem-float/2addr v2, v1

    return v2
.end method

.method public static log(FF)F
    .locals 4
    .param p0, "a"    # F
    .param p1, "value"    # F

    .line 368
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static log2(F)F
    .locals 1
    .param p0, "value"    # F

    .line 373
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p0}, Lcom/badlogic/gdx/math/MathUtils;->log(FF)F

    move-result v0

    return v0
.end method

.method public static map(FFFFF)F
    .locals 2
    .param p0, "inRangeStart"    # F
    .param p1, "inRangeEnd"    # F
    .param p2, "outRangeStart"    # F
    .param p3, "outRangeEnd"    # F
    .param p4, "value"    # F

    .line 270
    sub-float v0, p4, p0

    sub-float v1, p3, p2

    mul-float/2addr v0, v1

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    add-float/2addr v0, p2

    return v0
.end method

.method public static nextPowerOfTwo(I)I
    .locals 1
    .param p0, "value"    # I

    .line 199
    if-nez p0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 200
    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 201
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 202
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 203
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 204
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 205
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 206
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static norm(FFF)F
    .locals 2
    .param p0, "rangeStart"    # F
    .param p1, "rangeEnd"    # F
    .param p2, "value"    # F

    .line 258
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    return v0
.end method

.method public static random()F
    .locals 1

    .line 138
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public static random(F)F
    .locals 1
    .param p0, "range"    # F

    .line 143
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static random(FF)F
    .locals 2
    .param p0, "start"    # F
    .param p1, "end"    # F

    .line 148
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static random(I)I
    .locals 2
    .param p0, "range"    # I

    .line 108
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public static random(II)I
    .locals 2
    .param p0, "start"    # I
    .param p1, "end"    # I

    .line 113
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static random(J)J
    .locals 4
    .param p0, "range"    # J

    .line 118
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    long-to-double v2, p0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public static random(JJ)J
    .locals 4
    .param p0, "start"    # J
    .param p2, "end"    # J

    .line 123
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    sub-long v2, p2, p0

    long-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static randomBoolean()Z
    .locals 1

    .line 128
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public static randomBoolean(F)Z
    .locals 1
    .param p0, "chance"    # F

    .line 133
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v0

    cmpg-float v0, v0, p0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static randomSign()I
    .locals 1

    .line 153
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1f

    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static randomTriangular()F
    .locals 2

    .line 161
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public static randomTriangular(F)F
    .locals 2
    .param p0, "max"    # F

    .line 170
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method public static randomTriangular(FF)F
    .locals 2
    .param p0, "min"    # F
    .param p1, "max"    # F

    .line 180
    add-float v0, p0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/math/MathUtils;->randomTriangular(FFF)F

    move-result v0

    return v0
.end method

.method public static randomTriangular(FFF)F
    .locals 4
    .param p0, "min"    # F
    .param p1, "max"    # F
    .param p2, "mode"    # F

    .line 189
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    .line 190
    .local v0, "u":F
    sub-float v1, p1, p0

    .line 191
    .local v1, "d":F
    sub-float v2, p2, p0

    div-float/2addr v2, v1

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    mul-float v2, v0, v1

    sub-float v3, p2, p0

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v2, p0

    return v2

    .line 192
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float/2addr v2, v1

    sub-float v3, p1, p2

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    sub-float v2, p1, v2

    return v2
.end method

.method public static round(F)I
    .locals 4
    .param p0, "value"    # F

    .line 332
    float-to-double v0, p0

    const-wide v2, 0x40d0002000000000L    # 16384.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, -0x4000

    return v0
.end method

.method public static roundPositive(F)I
    .locals 1
    .param p0, "value"    # F

    .line 337
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static sin(F)F
    .locals 2
    .param p0, "radians"    # F

    .line 64
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const v1, 0x4522f983

    mul-float/2addr v1, p0

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x3fff

    aget v0, v0, v1

    return v0
.end method

.method public static sinDeg(F)F
    .locals 2
    .param p0, "degrees"    # F

    .line 74
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const v1, 0x42360b61

    mul-float/2addr v1, p0

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x3fff

    aget v0, v0, v1

    return v0
.end method
