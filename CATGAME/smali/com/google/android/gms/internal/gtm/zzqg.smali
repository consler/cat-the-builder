.class final Lcom/google/android/gms/internal/gtm/zzqg;
.super Lcom/google/android/gms/internal/gtm/zzqe;


# instance fields
.field private final buffer:[B

.field private limit:I

.field private pos:I

.field private final zzawk:Z

.field private zzawl:I

.field private zzawm:I

.field private zzawn:I

.field private zzawo:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqe;-><init>(Lcom/google/android/gms/internal/gtm/zzqf;)V

    .line 2
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawo:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->buffer:[B

    .line 4
    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawm:I

    .line 7
    iput-boolean p4, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawk:Z

    .line 8
    return-void
.end method

.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/gtm/zzqf;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/gtm/zzqg;-><init>([BIIZ)V

    return-void
.end method

.method private final zzoa()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    .line 124
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    if-eq v1, v0, :cond_6

    .line 125
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->buffer:[B

    .line 126
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    .line 127
    iput v3, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    .line 128
    return v0

    .line 129
    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_6

    .line 130
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_1

    .line 131
    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    .line 132
    :cond_1
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_2

    .line 133
    xor-int/lit16 v0, v0, 0x3f80

    move v1, v3

    goto :goto_0

    .line 134
    :cond_2
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_3

    .line 135
    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    .line 136
    :cond_3
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    .line 137
    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    .line 138
    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    .line 139
    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-ltz v2, :cond_6

    goto :goto_0

    :cond_4
    move v1, v3

    .line 140
    :cond_5
    :goto_0
    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    .line 141
    return v0

    .line 142
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznx()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private final zzob()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    .line 144
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    if-eq v1, v0, :cond_9

    .line 145
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->buffer:[B

    .line 146
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    .line 147
    iput v3, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    .line 148
    int-to-long v0, v0

    return-wide v0

    .line 149
    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_9

    .line 150
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_1

    .line 151
    xor-int/lit8 v0, v0, -0x80

    int-to-long v2, v0

    goto/16 :goto_0

    .line 152
    :cond_1
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_2

    .line 153
    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_0

    .line 154
    :cond_2
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_3

    .line 155
    const v2, -0x1fc080

    xor-int/2addr v0, v2

    int-to-long v2, v0

    goto/16 :goto_0

    .line 156
    :cond_3
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    .line 157
    const-wide/32 v1, 0xfe03f80

    xor-long v2, v3, v1

    move v1, v0

    goto :goto_0

    .line 158
    :cond_4
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_5

    .line 159
    const-wide v5, -0x7f01fc080L

    xor-long v2, v3, v5

    goto :goto_0

    .line 160
    :cond_5
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_6

    .line 161
    const-wide v1, 0x3f80fe03f80L

    xor-long v2, v3, v1

    move v1, v0

    goto :goto_0

    .line 162
    :cond_6
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_7

    .line 163
    const-wide v5, -0x1fc07f01fc080L

    xor-long v2, v3, v5

    goto :goto_0

    .line 164
    :cond_7
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    .line 165
    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    .line 166
    cmp-long v1, v3, v5

    if-gez v1, :cond_8

    .line 167
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-ltz v0, :cond_9

    move-wide v2, v3

    goto :goto_0

    .line 166
    :cond_8
    move v1, v0

    move-wide v2, v3

    .line 168
    :goto_0
    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    .line 169
    return-wide v2

    .line 170
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznx()J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzoc()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    .line 180
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 182
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->buffer:[B

    .line 183
    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    .line 184
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    .line 181
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpp()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object v0

    throw v0
.end method

.method private final zzod()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    .line 186
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 188
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->buffer:[B

    .line 189
    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    .line 190
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 187
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpp()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object v0

    throw v0
.end method

.method private final zzoe()V
    .locals 3

    .line 200
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawl:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    .line 201
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawm:I

    sub-int v1, v0, v1

    .line 202
    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawo:I

    if-le v1, v2, :cond_0

    .line 203
    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawl:I

    .line 204
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawl:I

    .line 206
    return-void
.end method

.method private final zzof()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    if-eq v0, v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    aget-byte v0, v1, v0

    return v0

    .line 213
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpp()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzod()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoa()I

    move-result v0

    .line 66
    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 67
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    sget-object v4, Lcom/google/android/gms/internal/gtm/zzre;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 68
    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    .line 69
    return-object v1

    .line 70
    :cond_0
    if-nez v0, :cond_1

    .line 71
    const-string v0, ""

    return-object v0

    .line 72
    :cond_1
    if-gez v0, :cond_2

    .line 73
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpq()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object v0

    throw v0

    .line 74
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpp()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object v0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzsu;Lcom/google/android/gms/internal/gtm/zzqp;)Lcom/google/android/gms/internal/gtm/zzsk;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/gtm/zzsk;",
            ">(",
            "Lcom/google/android/gms/internal/gtm/zzsu<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzqp;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoa()I

    move-result v0

    .line 86
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawf:I

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawg:I

    if-ge v1, v2, :cond_0

    .line 88
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzaq(I)I

    move-result v0

    .line 89
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawf:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawf:I

    .line 90
    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/internal/gtm/zzsu;->zza(Lcom/google/android/gms/internal/gtm/zzqe;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzsk;

    .line 91
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/gtm/zzqe;->zzan(I)V

    .line 92
    iget p2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawf:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawf:I

    .line 93
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzar(I)V

    .line 94
    return-object p1

    .line 87
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpu()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p1

    throw p1
.end method

.method public final zzan(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzrk;
        }
    .end annotation

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawn:I

    if-ne v0, p1, :cond_0

    .line 21
    return-void

    .line 20
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzps()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p1

    throw p1
.end method

.method public final zzao(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    nop

    .line 23
    and-int/lit8 v0, p1, 0x7

    .line 24
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    .line 54
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/gtm/zzqe;->zzas(I)V

    .line 55
    return v2

    .line 56
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 53
    :cond_1
    return v1

    .line 43
    :cond_2
    nop

    .line 44
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    .line 45
    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzao(I)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 47
    :cond_3
    goto :goto_0

    .line 46
    :cond_4
    :goto_1
    nop

    .line 48
    nop

    .line 49
    ushr-int/2addr p1, v4

    .line 50
    shl-int/2addr p1, v4

    or-int/2addr p1, v3

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzan(I)V

    .line 52
    return v2

    .line 41
    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoa()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzas(I)V

    .line 42
    return v2

    .line 39
    :cond_6
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzas(I)V

    .line 40
    return v2

    .line 25
    :cond_7
    nop

    .line 26
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    sub-int/2addr p1, v0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_a

    .line 27
    nop

    .line 28
    nop

    :goto_2
    if-ge v1, v0, :cond_9

    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    aget-byte p1, p1, v3

    if-gez p1, :cond_8

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 32
    :cond_8
    goto :goto_4

    .line 31
    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpr()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p1

    throw p1

    .line 33
    :cond_a
    nop

    .line 34
    nop

    :goto_3
    if-ge v1, v0, :cond_c

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzof()B

    move-result p1

    if-gez p1, :cond_b

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 38
    :cond_b
    :goto_4
    return v2

    .line 37
    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpr()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p1

    throw p1
.end method

.method public final zzaq(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzrk;
        }
    .end annotation

    .line 191
    if-ltz p1, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    add-int/2addr p1, v0

    .line 194
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawo:I

    .line 195
    if-gt p1, v0, :cond_0

    .line 197
    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawo:I

    .line 198
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoe()V

    .line 199
    return v0

    .line 196
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpp()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p1

    throw p1

    .line 192
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpq()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p1

    throw p1
.end method

.method public final zzar(I)V
    .locals 0

    .line 207
    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawo:I

    .line 208
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoe()V

    .line 209
    return-void
.end method

.method public final zzas(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 216
    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    .line 217
    return-void

    .line 218
    :cond_0
    if-gez p1, :cond_1

    .line 219
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpq()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p1

    throw p1

    .line 220
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpp()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p1

    throw p1
.end method

.method public final zzni()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawn:I

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoa()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawn:I

    .line 13
    nop

    .line 14
    ushr-int/lit8 v1, v0, 0x3

    .line 15
    if-eqz v1, :cond_1

    .line 18
    return v0

    .line 16
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrk;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    .line 17
    throw v0
.end method

.method public final zznj()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzob()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zznk()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzob()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zznl()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoa()I

    move-result v0

    return v0
.end method

.method public final zznm()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzod()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zznn()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoc()I

    move-result v0

    return v0
.end method

.method public final zzno()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzob()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zznp()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoa()I

    move-result v0

    .line 76
    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->buffer:[B

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/gtm/zztz;->zzh([BII)Ljava/lang/String;

    move-result-object v1

    .line 78
    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    .line 79
    return-object v1

    .line 80
    :cond_0
    if-nez v0, :cond_1

    .line 81
    const-string v0, ""

    return-object v0

    .line 82
    :cond_1
    if-gtz v0, :cond_2

    .line 83
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpq()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object v0

    throw v0

    .line 84
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpp()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object v0

    throw v0
.end method

.method public final zznq()Lcom/google/android/gms/internal/gtm/zzps;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoa()I

    move-result v0

    .line 96
    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->buffer:[B

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/gtm/zzps;->zzb([BII)Lcom/google/android/gms/internal/gtm/zzps;

    move-result-object v1

    .line 98
    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    .line 99
    return-object v1

    .line 100
    :cond_0
    if-nez v0, :cond_1

    .line 101
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzps;->zzavx:Lcom/google/android/gms/internal/gtm/zzps;

    return-object v0

    .line 102
    :cond_1
    nop

    .line 103
    if-lez v0, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    .line 104
    nop

    .line 105
    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    .line 106
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->buffer:[B

    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_2
    if-gtz v0, :cond_4

    .line 108
    if-nez v0, :cond_3

    .line 109
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzre;->zzbbh:[B

    .line 112
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzps;->zzf([B)Lcom/google/android/gms/internal/gtm/zzps;

    move-result-object v0

    return-object v0

    .line 110
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpq()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object v0

    throw v0

    .line 111
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpp()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object v0

    throw v0
.end method

.method public final zznr()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoa()I

    move-result v0

    return v0
.end method

.method public final zzns()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoa()I

    move-result v0

    return v0
.end method

.method public final zznt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoc()I

    move-result v0

    return v0
.end method

.method public final zznu()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzod()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zznv()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoa()I

    move-result v0

    .line 118
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    .line 119
    return v0
.end method

.method public final zznw()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzob()J

    move-result-wide v0

    .line 121
    const/4 v2, 0x1

    ushr-long v2, v0, v2

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    neg-long v0, v0

    xor-long/2addr v0, v2

    .line 122
    return-wide v0
.end method

.method final zznx()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    nop

    .line 172
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 173
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzof()B

    move-result v3

    .line 174
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 175
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    .line 176
    return-wide v0

    .line 177
    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 178
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpr()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object v0

    throw v0
.end method

.method public final zzny()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zznz()I
    .locals 2

    .line 211
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawm:I

    sub-int/2addr v0, v1

    return v0
.end method
