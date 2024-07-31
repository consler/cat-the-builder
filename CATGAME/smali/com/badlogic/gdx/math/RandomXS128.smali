.class public Lcom/badlogic/gdx/math/RandomXS128;
.super Ljava/util/Random;
.source "RandomXS128.java"


# static fields
.field private static final NORM_DOUBLE:D = 1.1102230246251565E-16

.field private static final NORM_FLOAT:D = 5.9604644775390625E-8


# instance fields
.field private seed0:J

.field private seed1:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/RandomXS128;->setSeed(J)V

    .line 50
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .param p1, "seed"    # J

    .line 54
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/RandomXS128;->setSeed(J)V

    .line 56
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "seed0"    # J
    .param p3, "seed1"    # J

    .line 61
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 62
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/RandomXS128;->setState(JJ)V

    .line 63
    return-void
.end method

.method private static final murmurHash3(J)J
    .locals 3
    .param p0, "x"    # J

    .line 188
    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    .line 189
    const-wide v1, -0xae502812aa7333L

    mul-long/2addr p0, v1

    .line 190
    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    .line 191
    const-wide v1, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr p0, v1

    .line 192
    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    .line 194
    return-wide p0
.end method


# virtual methods
.method public getState(I)J
    .locals 2
    .param p1, "seed"    # I

    .line 184
    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/badlogic/gdx/math/RandomXS128;->seed0:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/badlogic/gdx/math/RandomXS128;->seed1:J

    :goto_0
    return-wide v0
.end method

.method protected final next(I)I
    .locals 6
    .param p1, "bits"    # I

    .line 80
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextLong()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    long-to-int v0, v0

    return v0
.end method

.method public nextBoolean()Z
    .locals 4

    .line 141
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextLong()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextBytes([B)V
    .locals 6
    .param p1, "bytes"    # [B

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "n":I
    array-length v1, p1

    .line 152
    .local v1, "i":I
    :goto_0
    if-eqz v1, :cond_2

    .line 153
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    move v0, v3

    .line 154
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextLong()J

    move-result-wide v3

    .local v3, "bits":J
    :goto_2
    add-int/lit8 v5, v0, -0x1

    .end local v0    # "n":I
    .local v5, "n":I
    if-eqz v0, :cond_1

    .line 155
    add-int/lit8 v1, v1, -0x1

    long-to-int v0, v3

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    .line 154
    shr-long/2addr v3, v2

    move v0, v5

    goto :goto_2

    :cond_1
    move v0, v5

    .end local v3    # "bits":J
    goto :goto_0

    .line 157
    .end local v5    # "n":I
    .restart local v0    # "n":I
    :cond_2
    return-void
.end method

.method public nextDouble()D
    .locals 4

    .line 124
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextLong()J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public nextFloat()F
    .locals 4

    .line 133
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextLong()J

    move-result-wide v0

    const/16 v2, 0x28

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3e70000000000000L    # 5.9604644775390625E-8

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public nextInt()I
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public nextInt(I)I
    .locals 2
    .param p1, "n"    # I

    .line 99
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/RandomXS128;->nextLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public nextLong()J
    .locals 8

    .line 70
    iget-wide v0, p0, Lcom/badlogic/gdx/math/RandomXS128;->seed0:J

    .line 71
    .local v0, "s1":J
    iget-wide v2, p0, Lcom/badlogic/gdx/math/RandomXS128;->seed1:J

    .line 72
    .local v2, "s0":J
    iput-wide v2, p0, Lcom/badlogic/gdx/math/RandomXS128;->seed0:J

    .line 73
    const/16 v4, 0x17

    shl-long v4, v0, v4

    xor-long/2addr v0, v4

    .line 74
    xor-long v4, v0, v2

    const/16 v6, 0x11

    ushr-long v6, v0, v6

    xor-long/2addr v4, v6

    const/16 v6, 0x1a

    ushr-long v6, v2, v6

    xor-long/2addr v4, v6

    iput-wide v4, p0, Lcom/badlogic/gdx/math/RandomXS128;->seed1:J

    add-long/2addr v4, v2

    return-wide v4
.end method

.method public nextLong(J)J
    .locals 10
    .param p1, "n"    # J

    .line 110
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 112
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextLong()J

    move-result-wide v2

    const/4 v4, 0x1

    ushr-long/2addr v2, v4

    .line 113
    .local v2, "bits":J
    rem-long v4, v2, p1

    .line 114
    .local v4, "value":J
    sub-long v6, v2, v4

    const-wide/16 v8, 0x1

    sub-long v8, p1, v8

    add-long/2addr v6, v8

    cmp-long v6, v6, v0

    if-ltz v6, :cond_0

    return-wide v4

    .line 115
    .end local v2    # "bits":J
    .end local v4    # "value":J
    :cond_0
    goto :goto_0

    .line 110
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSeed(J)V
    .locals 4
    .param p1, "seed"    # J

    .line 166
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/RandomXS128;->murmurHash3(J)J

    move-result-wide v0

    .line 167
    .local v0, "seed0":J
    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/RandomXS128;->murmurHash3(J)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/math/RandomXS128;->setState(JJ)V

    .line 168
    return-void
.end method

.method public setState(JJ)V
    .locals 0
    .param p1, "seed0"    # J
    .param p3, "seed1"    # J

    .line 174
    iput-wide p1, p0, Lcom/badlogic/gdx/math/RandomXS128;->seed0:J

    .line 175
    iput-wide p3, p0, Lcom/badlogic/gdx/math/RandomXS128;->seed1:J

    .line 176
    return-void
.end method
