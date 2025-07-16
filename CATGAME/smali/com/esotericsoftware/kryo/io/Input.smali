.class public Lcom/esotericsoftware/kryo/io/Input;
.super Ljava/io/InputStream;
.source "Input.java"

# interfaces
.implements Lcom/esotericsoftware/kryo/util/Pool$Poolable;


# instance fields
.field protected buffer:[B

.field protected capacity:I

.field protected chars:[C

.field protected inputStream:Ljava/io/InputStream;

.field protected limit:I

.field protected position:I

.field protected total:J

.field protected varEncoding:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [C

    .line 38
    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [C

    .line 38
    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    .line 50
    iput p1, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    .line 51
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x1000

    .line 70
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;-><init>(I)V

    if-eqz p1, :cond_0

    .line 72
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    return-void

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "inputStream cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p2}, Lcom/esotericsoftware/kryo/io/Input;-><init>(I)V

    if-eqz p1, :cond_0

    .line 79
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    return-void

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inputStream cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [C

    .line 38
    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    const/4 v0, 0x0

    .line 58
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/Input;->setBuffer([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [C

    .line 38
    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/Input;->setBuffer([BII)V

    return-void
.end method

.method private readAsciiString()Ljava/lang/String;
    .locals 9

    .line 865
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    .line 866
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 867
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 869
    array-length v3, v0

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    .line 870
    aget-byte v6, v1, v2

    and-int/lit16 v7, v6, 0x80

    const/16 v8, 0x80

    if-ne v7, v8, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 872
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    and-int/lit8 v1, v6, 0x7f

    int-to-char v1, v1

    .line 873
    aput-char v1, v0, v5

    .line 874
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v1, v0, v4, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_0
    int-to-char v6, v6

    .line 876
    aput-char v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 878
    :cond_1
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 879
    invoke-direct {p0, v5}, Lcom/esotericsoftware/kryo/io/Input;->readAscii_slow(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readAscii_slow(I)Ljava/lang/String;
    .locals 7

    .line 883
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    .line 884
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 886
    :goto_0
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 887
    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v1, v2

    .line 888
    array-length v3, v0

    const/4 v5, 0x0

    if-ne p1, v3, :cond_1

    mul-int/lit8 v3, p1, 0x2

    .line 889
    new-array v3, v3, [C

    .line 890
    invoke-static {v0, v5, v3, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 892
    iput-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    move-object v0, v3

    :cond_1
    and-int/lit16 v3, v2, 0x80

    const/16 v6, 0x80

    if-ne v3, v6, :cond_2

    and-int/lit8 v1, v2, 0x7f

    int-to-char v1, v1

    .line 895
    aput-char v1, v0, p1

    .line 896
    new-instance v1, Ljava/lang/String;

    add-int/2addr p1, v4

    invoke-direct {v1, v0, v5, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_2
    add-int/lit8 v3, p1, 0x1

    int-to-char v2, v2

    .line 898
    aput-char v2, v0, p1

    move p1, v3

    goto :goto_0
.end method

.method private readUtf8Chars(I)V
    .locals 7

    .line 811
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    array-length v0, v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [C

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 813
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    const/4 v2, 0x1

    .line 816
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 817
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    add-int/lit8 v5, v3, 0x1

    .line 819
    aget-byte v3, v0, v3

    if-gez v3, :cond_1

    add-int/lit8 v3, v5, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v4, 0x1

    int-to-char v3, v3

    .line 824
    aput-char v3, v1, v4

    move v3, v5

    move v4, v6

    goto :goto_0

    .line 826
    :cond_2
    :goto_1
    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    if-ge v4, p1, :cond_3

    .line 828
    invoke-direct {p0, p1, v4}, Lcom/esotericsoftware/kryo/io/Input;->readUtf8Chars_slow(II)V

    :cond_3
    return-void
.end method

.method private readUtf8Chars_slow(II)V
    .locals 6

    .line 832
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    .line 833
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    :goto_0
    if-ge p2, p1, :cond_2

    .line 835
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 836
    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v5, v2, 0x4

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const/4 v3, 0x2

    .line 854
    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 855
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v3, 0x2

    .line 856
    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    .line 857
    aget-byte v5, v1, v3

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v2, v5

    add-int/2addr v3, v4

    aget-byte v3, v1, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, p2

    goto :goto_1

    .line 850
    :pswitch_2
    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v3, v5, :cond_1

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_1
    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    .line 851
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v3, v1, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, p2

    goto :goto_1

    :pswitch_3
    int-to-char v2, v2

    .line 846
    aput-char v2, v0, p2

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private readVarIntFlag_slow(Z)I
    .locals 6

    .line 514
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    and-int/lit8 v1, v0, 0x3f

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4

    .line 517
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    const/4 v3, 0x1

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 519
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v5, v2, 0x7f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v1, v5

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_4

    .line 522
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v4, v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 523
    :cond_1
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v5, v2, 0x7f

    shl-int/lit8 v5, v5, 0xd

    or-int/2addr v1, v5

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_4

    .line 526
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v4, v2, :cond_2

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 527
    :cond_2
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v5, v2, 0x7f

    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v1, v5

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_4

    .line 530
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v4, v2, :cond_3

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 531
    :cond_3
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1b

    or-int/2addr v1, v0

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    ushr-int/lit8 p1, v1, 0x1

    and-int/lit8 v0, v1, 0x1

    neg-int v0, v0

    xor-int v1, p1, v0

    :goto_0
    return v1
.end method

.method private readVarInt_slow(Z)I
    .locals 6

    .line 434
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    and-int/lit8 v1, v0, 0x7f

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    .line 437
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    const/4 v3, 0x1

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 439
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v5, v2, 0x7f

    shl-int/lit8 v5, v5, 0x7

    or-int/2addr v1, v5

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_4

    .line 442
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v4, v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 443
    :cond_1
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v5, v2, 0x7f

    shl-int/lit8 v5, v5, 0xe

    or-int/2addr v1, v5

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_4

    .line 446
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v4, v2, :cond_2

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 447
    :cond_2
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v5, v2, 0x7f

    shl-int/lit8 v5, v5, 0x15

    or-int/2addr v1, v5

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_4

    .line 450
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v4, v2, :cond_3

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 451
    :cond_3
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr v1, v0

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    ushr-int/lit8 p1, v1, 0x1

    and-int/lit8 v0, v1, 0x1

    neg-int v0, v0

    xor-int v1, p1, v0

    :goto_0
    return v1
.end method

.method private readVarLong_slow(Z)J
    .locals 9

    .line 613
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    and-int/lit8 v1, v0, 0x7f

    int-to-long v3, v1

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 616
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 618
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v6, v2, 0x7f

    shl-int/lit8 v6, v6, 0x7

    int-to-long v6, v6

    or-long/2addr v3, v6

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    .line 621
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v5, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 622
    :cond_1
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v6, v2, 0x7f

    shl-int/lit8 v6, v6, 0xe

    int-to-long v6, v6

    or-long/2addr v3, v6

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    .line 625
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v5, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 626
    :cond_2
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v6, v2, 0x7f

    shl-int/lit8 v6, v6, 0x15

    int-to-long v6, v6

    or-long/2addr v3, v6

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    .line 629
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v5, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 630
    :cond_3
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v6, v2, 0x7f

    int-to-long v6, v6

    const/16 v8, 0x1c

    shl-long/2addr v6, v8

    or-long/2addr v3, v6

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    .line 633
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v5, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 634
    :cond_4
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v6, v2, 0x7f

    int-to-long v6, v6

    const/16 v8, 0x23

    shl-long/2addr v6, v8

    or-long/2addr v3, v6

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    .line 637
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v5, v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 638
    :cond_5
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v6, v2, 0x7f

    int-to-long v6, v6

    const/16 v8, 0x2a

    shl-long/2addr v6, v8

    or-long/2addr v3, v6

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    .line 641
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v5, v2, :cond_6

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 642
    :cond_6
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v6, v2, 0x7f

    int-to-long v6, v6

    const/16 v8, 0x31

    shl-long/2addr v6, v8

    or-long/2addr v3, v6

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    .line 645
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v5, v2, :cond_7

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 646
    :cond_7
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v2

    int-to-long v5, v0

    const/16 v0, 0x38

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    :cond_8
    if-eqz p1, :cond_9

    goto :goto_0

    :cond_9
    ushr-long v0, v3, v1

    const-wide/16 v5, 0x1

    and-long v2, v3, v5

    neg-long v2, v2

    xor-long v3, v0, v2

    :goto_0
    return-wide v3
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public canReadInt()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 399
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->canReadVarInt()Z

    move-result v0

    return v0

    .line 400
    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    return v1

    .line 401
    :cond_1
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public canReadLong()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 661
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->canReadVarLong()Z

    move-result v0

    return v0

    .line 662
    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    return v1

    .line 663
    :cond_1
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public canReadVarInt()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 462
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    return v1

    .line 463
    :cond_0
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v0

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    return v2

    .line 464
    :cond_1
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    .line 465
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v5, v0, 0x1

    .line 466
    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2

    return v1

    :cond_2
    if-ne v5, v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v0, v5, 0x1

    .line 468
    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_4

    return v1

    :cond_4
    if-ne v0, v3, :cond_5

    return v2

    :cond_5
    add-int/lit8 v5, v0, 0x1

    .line 470
    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-ne v5, v3, :cond_7

    return v2

    :cond_7
    add-int/lit8 v0, v5, 0x1

    .line 472
    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_8

    return v1

    :cond_8
    if-ne v0, v3, :cond_9

    return v2

    :cond_9
    return v1
.end method

.method public canReadVarLong()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 668
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x5

    .line 669
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return v1

    .line 670
    :cond_1
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    .line 671
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v5, v0, 0x1

    .line 672
    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2

    return v2

    :cond_2
    if-ne v5, v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v5, 0x1

    .line 674
    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_4

    return v2

    :cond_4
    if-ne v0, v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v5, v0, 0x1

    .line 676
    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_6

    return v2

    :cond_6
    if-ne v5, v3, :cond_7

    return v1

    :cond_7
    add-int/lit8 v0, v5, 0x1

    .line 678
    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_8

    return v2

    :cond_8
    if-ne v0, v3, :cond_9

    return v1

    :cond_9
    add-int/lit8 v5, v0, 0x1

    .line 680
    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_a

    return v2

    :cond_a
    if-ne v5, v3, :cond_b

    return v1

    :cond_b
    add-int/lit8 v0, v5, 0x1

    .line 682
    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_c

    return v2

    :cond_c
    if-ne v0, v3, :cond_d

    return v1

    :cond_d
    add-int/lit8 v5, v0, 0x1

    .line 684
    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_e

    return v2

    :cond_e
    if-ne v5, v3, :cond_f

    return v1

    :cond_f
    add-int/lit8 v0, v5, 0x1

    .line 686
    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_10

    return v2

    :cond_10
    if-ne v0, v3, :cond_11

    return v1

    :cond_11
    return v2
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 327
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public end()Z
    .locals 2

    const/4 v0, 0x1

    .line 268
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected fill([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 183
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 185
    new-instance p2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getBuffer()[B
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getVariableLengthEncoding()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    return v0
.end method

.method public limit()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    return v0
.end method

.method protected optional(I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 234
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    return p1

    .line 236
    :cond_0
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 241
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    sub-int/2addr v3, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/esotericsoftware/kryo/io/Input;->fill([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 242
    :cond_1
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_0
    return v2

    :cond_2
    add-int/2addr v0, v1

    if-lt v0, p1, :cond_3

    .line 245
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    return p1

    .line 250
    :cond_3
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    const/4 v4, 0x0

    invoke-static {v1, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    iget-wide v5, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    int-to-long v7, v1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    .line 252
    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 255
    :cond_4
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    sub-int/2addr v3, v0

    invoke-virtual {p0, v1, v0, v3}, Lcom/esotericsoftware/kryo/io/Input;->fill([BII)I

    move-result v1

    if-ne v1, v2, :cond_5

    goto :goto_1

    :cond_5
    add-int/2addr v0, v1

    if-lt v0, p1, :cond_4

    .line 261
    :goto_1
    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-nez v0, :cond_6

    goto :goto_2

    .line 262
    :cond_6
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_2
    return v2
.end method

.method public position()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 279
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 286
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/Input;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 294
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, p3

    .line 296
    :cond_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr p2, v0

    .line 301
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    if-ne p3, v1, :cond_3

    return v2

    .line 307
    :cond_2
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v2, v3, :cond_0

    :cond_3
    :goto_0
    sub-int/2addr p3, v1

    return p3

    .line 292
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bytes cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readBoolean()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 765
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public readBooleans(I)[Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 1050
    new-array v0, p1, [Z

    .line 1051
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, p1, :cond_2

    .line 1052
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 1053
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    move v4, v2

    :goto_0
    if-ge v4, p1, :cond_1

    .line 1055
    aget-byte v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    aput-boolean v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1056
    :cond_1
    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    goto :goto_3

    :cond_2
    :goto_2
    if-ge v2, p1, :cond_3

    .line 1059
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v1

    aput-boolean v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-object v0
.end method

.method public readByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 337
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readByteUnsigned()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 343
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readBytes([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 356
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/Input;->readBytes([BII)V

    return-void
.end method

.method public readBytes([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 362
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 364
    :goto_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr p3, v0

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/2addr p2, v0

    .line 369
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 370
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    goto :goto_0

    .line 361
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bytes cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readBytes(I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 349
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 350
    invoke-virtual {p0, v0, v1, p1}, Lcom/esotericsoftware/kryo/io/Input;->readBytes([BII)V

    return-object v0
.end method

.method public readChar()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 755
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 756
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v1, v0, 0x2

    .line 757
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 758
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    int-to-char v0, v0

    return v0
.end method

.method public readChars(I)[C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 1034
    new-array v0, p1, [C

    shl-int/lit8 v1, p1, 0x1

    .line 1035
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 1036
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 1037
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    :goto_0
    if-ge v3, p1, :cond_0

    .line 1039
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1040
    :cond_0
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    .line 1043
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readChar()C

    move-result v1

    aput-char v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public readDouble()D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 714
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 715
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 716
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x8

    .line 717
    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 718
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v0, v4, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    int-to-long v3, v0

    add-int/lit8 v0, v2, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x18

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x4

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x20

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x5

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x28

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x6

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x30

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x7

    aget-byte v0, v1, v2

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readDoubles(I)[D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 994
    new-array v0, p1, [D

    shl-int/lit8 v1, p1, 0x3

    .line 995
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 996
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 997
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    :goto_0
    if-ge v3, p1, :cond_0

    .line 999
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    int-to-long v4, v4

    add-int/lit8 v6, v2, 0x3

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x4

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x5

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x6

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x7

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    .line 1008
    :cond_0
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    .line 1011
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readDouble()D

    move-result-wide v1

    aput-wide v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public readFloat()F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 695
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 696
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 697
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x4

    .line 698
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 699
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFloats(I)[F
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 974
    new-array v0, p1, [F

    shl-int/lit8 v1, p1, 0x2

    .line 975
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 976
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 977
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    :goto_0
    if-ge v3, p1, :cond_0

    .line 979
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x3

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 984
    :cond_0
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    .line 987
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v1

    aput v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 378
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 379
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 380
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x4

    .line 381
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 382
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method public readInt(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 393
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    return p1

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    return p1
.end method

.method public readInts(I)[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 906
    new-array v0, p1, [I

    shl-int/lit8 v1, p1, 0x2

    .line 907
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 908
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 909
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    :goto_0
    if-ge v3, p1, :cond_0

    .line 911
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x3

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 916
    :cond_0
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    .line 919
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v1

    aput v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public readInts(IZ)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 927
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    if-eqz v0, :cond_1

    .line 928
    new-array v0, p1, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 930
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 933
    :cond_1
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readInts(I)[I

    move-result-object p1

    return-object p1
.end method

.method public readLong()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 544
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 545
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 546
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x8

    .line 547
    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 548
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v0, v4, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    int-to-long v3, v0

    add-int/lit8 v0, v2, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x18

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x4

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x20

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x5

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x28

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x6

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x30

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x7

    aget-byte v0, v1, v2

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public readLong(Z)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 563
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarLong(Z)J

    move-result-wide v0

    return-wide v0

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongs(I)[J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 938
    new-array v0, p1, [J

    shl-int/lit8 v1, p1, 0x3

    .line 939
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 940
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 941
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    :goto_0
    if-ge v3, p1, :cond_0

    .line 943
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    int-to-long v4, v4

    add-int/lit8 v6, v2, 0x3

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x4

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x5

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x6

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x7

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    .line 952
    :cond_0
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    .line 955
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readLong()J

    move-result-wide v1

    aput-wide v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public readLongs(IZ)[J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 963
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    if-eqz v0, :cond_1

    .line 964
    new-array v0, p1, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 966
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/io/Input;->readVarLong(Z)J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 969
    :cond_1
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readLongs(I)[J

    move-result-object p1

    return-object p1
.end method

.method public readShort()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 737
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 738
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v1, v0, 0x2

    .line 739
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 740
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    int-to-short v0, v0

    return v0
.end method

.method public readShortUnsigned()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 745
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 746
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v1, v0, 0x2

    .line 747
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 748
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    return v0
.end method

.method public readShorts(I)[S
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 1018
    new-array v0, p1, [S

    shl-int/lit8 v1, p1, 0x1

    .line 1019
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 1020
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 1021
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    :goto_0
    if-ge v3, p1, :cond_0

    .line 1023
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1024
    :cond_0
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    .line 1027
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readShort()S

    move-result v1

    aput-short v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .locals 4

    .line 775
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readVarIntFlag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Input;->readAsciiString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 777
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarIntFlag(Z)I

    move-result v1

    if-eqz v1, :cond_2

    if-eq v1, v0, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 785
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->readUtf8Chars(I)V

    .line 786
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public readStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .line 794
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readVarIntFlag()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Input;->readAsciiString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 796
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarIntFlag(Z)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    if-eq v1, v0, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 804
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->readUtf8Chars(I)V

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 806
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    invoke-virtual {v0, v3, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-object v0

    .line 801
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public readVarDouble(DZ)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 730
    invoke-virtual {p0, p3}, Lcom/esotericsoftware/kryo/io/Input;->readVarLong(Z)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, p1

    return-wide v0
.end method

.method public readVarFloat(FZ)F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 707
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p1

    return p2
.end method

.method public readVarInt(Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 407
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt_slow(Z)I

    move-result p1

    return p1

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v0, v1

    and-int/lit8 v3, v1, 0x7f

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_3

    add-int/lit8 v1, v2, 0x1

    .line 413
    aget-byte v2, v0, v2

    and-int/lit8 v4, v2, 0x7f

    shl-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 416
    aget-byte v1, v0, v1

    and-int/lit8 v4, v1, 0x7f

    shl-int/lit8 v4, v4, 0xe

    or-int/2addr v3, v4

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    add-int/lit8 v1, v2, 0x1

    .line 419
    aget-byte v2, v0, v2

    and-int/lit8 v4, v2, 0x7f

    shl-int/lit8 v4, v4, 0x15

    or-int/2addr v3, v4

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 422
    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr v0, v3

    move v3, v0

    :cond_1
    move v1, v2

    .line 427
    :cond_2
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    ushr-int/lit8 p1, v3, 0x1

    and-int/lit8 v0, v3, 0x1

    neg-int v0, v0

    xor-int v3, p1, v0

    :goto_0
    return v3
.end method

.method public readVarIntFlag(Z)I
    .locals 5

    const/4 v0, 0x1

    .line 487
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarIntFlag_slow(Z)I

    move-result p1

    return p1

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v0, v1

    and-int/lit8 v3, v1, 0x3f

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_3

    add-int/lit8 v1, v2, 0x1

    .line 493
    aget-byte v2, v0, v2

    and-int/lit8 v4, v2, 0x7f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 496
    aget-byte v1, v0, v1

    and-int/lit8 v4, v1, 0x7f

    shl-int/lit8 v4, v4, 0xd

    or-int/2addr v3, v4

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    add-int/lit8 v1, v2, 0x1

    .line 499
    aget-byte v2, v0, v2

    and-int/lit8 v4, v2, 0x7f

    shl-int/lit8 v4, v4, 0x14

    or-int/2addr v3, v4

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 502
    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1b

    or-int/2addr v0, v3

    move v3, v0

    :cond_1
    move v1, v2

    .line 507
    :cond_2
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    ushr-int/lit8 p1, v3, 0x1

    and-int/lit8 v0, v3, 0x1

    neg-int v0, v0

    xor-int v3, p1, v0

    :goto_0
    return v3
.end method

.method public readVarIntFlag()Z
    .locals 3

    .line 480
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public readVarLong(Z)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 570
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarLong_slow(Z)J

    move-result-wide v0

    return-wide v0

    .line 571
    :cond_0
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 572
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit8 v4, v1, 0x7f

    int-to-long v4, v4

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    .line 576
    aget-byte v3, v2, v3

    and-int/lit8 v6, v3, 0x7f

    shl-int/lit8 v6, v6, 0x7

    int-to-long v6, v6

    or-long/2addr v4, v6

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 579
    aget-byte v1, v2, v1

    and-int/lit8 v6, v1, 0x7f

    shl-int/lit8 v6, v6, 0xe

    int-to-long v6, v6

    or-long/2addr v4, v6

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    .line 582
    aget-byte v3, v2, v3

    and-int/lit8 v6, v3, 0x7f

    shl-int/lit8 v6, v6, 0x15

    int-to-long v6, v6

    or-long/2addr v4, v6

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 585
    aget-byte v1, v2, v1

    and-int/lit8 v6, v1, 0x7f

    int-to-long v6, v6

    const/16 v8, 0x1c

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    .line 588
    aget-byte v3, v2, v3

    and-int/lit8 v6, v3, 0x7f

    int-to-long v6, v6

    const/16 v8, 0x23

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 591
    aget-byte v1, v2, v1

    and-int/lit8 v6, v1, 0x7f

    int-to-long v6, v6

    const/16 v8, 0x2a

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    .line 594
    aget-byte v3, v2, v3

    and-int/lit8 v6, v3, 0x7f

    int-to-long v6, v6

    const/16 v8, 0x31

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 597
    aget-byte v1, v2, v1

    int-to-long v1, v1

    const/16 v6, 0x38

    shl-long/2addr v1, v6

    or-long/2addr v4, v1

    goto :goto_0

    :cond_1
    move v3, v1

    .line 607
    :cond_2
    :goto_0
    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    ushr-long v0, v4, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, v4

    neg-long v2, v2

    xor-long v4, v0, v2

    :goto_1
    return-wide v4
.end method

.method protected require(I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 194
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int v1, v0, v1

    if-lt v1, p1, :cond_0

    return v1

    .line 196
    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    if-gt p1, v2, :cond_6

    const-string v3, "Buffer underflow."

    const/4 v4, -0x1

    if-lez v1, :cond_2

    .line 201
    iget-object v5, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    sub-int/2addr v2, v0

    invoke-virtual {p0, v5, v0, v2}, Lcom/esotericsoftware/kryo/io/Input;->fill([BII)I

    move-result v0

    if-eq v0, v4, :cond_1

    add-int/2addr v1, v0

    if-lt v1, p1, :cond_2

    .line 205
    iget p1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    return v1

    .line 202
    :cond_1
    new-instance p1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {p1, v3}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    const/4 v5, 0x0

    invoke-static {v0, v2, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    iget-wide v6, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    .line 213
    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/esotericsoftware/kryo/io/Input;->fill([BII)I

    move-result v0

    if-ne v0, v4, :cond_5

    if-lt v1, p1, :cond_4

    goto :goto_0

    .line 219
    :cond_4
    new-instance p1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {p1, v3}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    add-int/2addr v1, v0

    if-lt v1, p1, :cond_3

    .line 225
    :goto_0
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    return v1

    .line 196
    :cond_6
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Buffer too small: capacity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    const-wide/16 v0, 0x0

    .line 162
    iput-wide v0, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    return-void
.end method

.method public setBuffer([B)V
    .locals 2

    const/4 v0, 0x0

    .line 85
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/Input;->setBuffer([BII)V

    return-void
.end method

.method public setBuffer([BII)V
    .locals 0

    if-eqz p1, :cond_0

    .line 92
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 93
    iput p2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr p2, p3

    .line 94
    iput p2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    .line 95
    array-length p1, p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    const-wide/16 p1, 0x0

    .line 96
    iput-wide p1, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    return-void

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bytes cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 114
    iput p1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    .line 115
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->reset()V

    return-void
.end method

.method public setLimit(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    return-void
.end method

.method public setTotal(J)V
    .locals 0

    .line 135
    iput-wide p1, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    return-void
.end method

.method public setVariableLengthEncoding(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    return-void
.end method

.method public skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    move-wide v0, p1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/32 v2, 0x7ffffff7

    .line 316
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 317
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Input;->skip(I)V

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public skip(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 167
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 169
    :goto_0
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr p1, v0

    if-nez p1, :cond_0

    return-void

    .line 172
    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 173
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    goto :goto_0
.end method

.method public total()J
    .locals 4

    .line 130
    iget-wide v0, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
