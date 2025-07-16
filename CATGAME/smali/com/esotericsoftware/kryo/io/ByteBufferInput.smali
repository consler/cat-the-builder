.class public Lcom/esotericsoftware/kryo/io/ByteBufferInput;
.super Lcom/esotericsoftware/kryo/io/Input;
.source "ByteBufferInput.java"


# static fields
.field private static final nativeOrder:Ljava/nio/ByteOrder;


# instance fields
.field protected byteBuffer:Ljava/nio/ByteBuffer;

.field private tempBuffer:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->nativeOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Input;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Input;-><init>()V

    .line 51
    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->capacity:I

    .line 52
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x1000

    .line 77
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>(I)V

    if-eqz p1, :cond_0

    .line 79
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->inputStream:Ljava/io/InputStream;

    return-void

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "inputStream cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    .line 84
    invoke-direct {p0, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>(I)V

    if-eqz p1, :cond_0

    .line 86
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->inputStream:Ljava/io/InputStream;

    return-void

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inputStream cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Input;-><init>()V

    .line 72
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    .line 57
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Input;-><init>()V

    if-eqz p1, :cond_0

    .line 64
    array-length p2, p1

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 65
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 66
    invoke-direct {p0, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->flipBuffer(Ljava/nio/Buffer;)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBuffer(Ljava/nio/ByteBuffer;)V

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bytes cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private flipBuffer(Ljava/nio/Buffer;)V
    .locals 0

    .line 317
    invoke-virtual {p1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method private getBufferPosition(Ljava/nio/Buffer;)I
    .locals 0

    .line 305
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    return p1
.end method

.method private readAsciiString()Ljava/lang/String;
    .locals 8

    .line 796
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->chars:[C

    .line 797
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 799
    array-length v2, v0

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 800
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v6, v5, 0x80

    const/16 v7, 0x80

    if-ne v6, v7, :cond_0

    .line 802
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v1

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    and-int/lit8 v1, v5, 0x7f

    int-to-char v1, v1

    .line 803
    aput-char v1, v0, v4

    .line 804
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v0, v3, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_0
    int-to-char v5, v5

    .line 806
    aput-char v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 808
    :cond_1
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 809
    invoke-direct {p0, v4}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readAscii_slow(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readAscii_slow(I)Ljava/lang/String;
    .locals 7

    .line 813
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->chars:[C

    .line 814
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 816
    :goto_0
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 817
    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 818
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 819
    array-length v3, v0

    const/4 v5, 0x0

    if-ne p1, v3, :cond_1

    mul-int/lit8 v3, p1, 0x2

    .line 820
    new-array v3, v3, [C

    .line 821
    invoke-static {v0, v5, v3, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 823
    iput-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->chars:[C

    move-object v0, v3

    :cond_1
    and-int/lit16 v3, v2, 0x80

    const/16 v6, 0x80

    if-ne v3, v6, :cond_2

    and-int/lit8 v1, v2, 0x7f

    int-to-char v1, v1

    .line 826
    aput-char v1, v0, p1

    .line 827
    new-instance v1, Ljava/lang/String;

    add-int/2addr p1, v4

    invoke-direct {v1, v0, v5, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_2
    add-int/lit8 v3, p1, 0x1

    int-to-char v2, v2

    .line 829
    aput-char v2, v0, p1

    move p1, v3

    goto :goto_0
.end method

.method private readUtf8Chars(I)V
    .locals 6

    .line 740
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->chars:[C

    array-length v0, v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [C

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->chars:[C

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->chars:[C

    .line 743
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    .line 745
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 747
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v3, 0x1

    int-to-char v4, v4

    .line 749
    aput-char v4, v0, v3

    move v3, v5

    goto :goto_0

    .line 751
    :cond_2
    :goto_1
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    if-ge v3, p1, :cond_3

    .line 754
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    invoke-direct {p0, v1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 755
    invoke-direct {p0, p1, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readUtf8Chars_slow(II)V

    :cond_3
    return-void
.end method

.method private readUtf8Chars_slow(II)V
    .locals 6

    .line 760
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 761
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->chars:[C

    :goto_0
    if-ge p2, p1, :cond_2

    .line 763
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 764
    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 765
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v2, 0x4

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const/4 v3, 0x2

    .line 784
    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 785
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 786
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 787
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    and-int/lit8 v3, v4, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    .line 788
    aput-char v2, v1, p2

    goto :goto_1

    .line 779
    :pswitch_2
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v3, v5, :cond_1

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 780
    :cond_1
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    .line 781
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v1, p2

    goto :goto_1

    :pswitch_3
    int-to-char v2, v2

    .line 775
    aput-char v2, v1, p2

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
    .locals 5

    .line 476
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 477
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit8 v2, v0, 0x3f

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4

    .line 480
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 481
    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 482
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 483
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v2, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_4

    .line 486
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v3, v4, :cond_1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 487
    :cond_1
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 488
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    shl-int/lit8 v4, v4, 0xd

    or-int/2addr v2, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_4

    .line 491
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v3, v4, :cond_2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 492
    :cond_2
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 493
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    shl-int/lit8 v4, v4, 0x14

    or-int/2addr v2, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_4

    .line 496
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v3, v4, :cond_3

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 497
    :cond_3
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 498
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1b

    or-int/2addr v2, v0

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    ushr-int/lit8 p1, v2, 0x1

    and-int/lit8 v0, v2, 0x1

    neg-int v0, v0

    xor-int v2, p1, v0

    :goto_0
    return v2
.end method

.method private readVarInt_slow(Z)I
    .locals 5

    .line 393
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 394
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit8 v2, v0, 0x7f

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    .line 397
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 399
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 400
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    shl-int/lit8 v4, v4, 0x7

    or-int/2addr v2, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_4

    .line 403
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v3, v4, :cond_1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 404
    :cond_1
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 405
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    shl-int/lit8 v4, v4, 0xe

    or-int/2addr v2, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_4

    .line 408
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v3, v4, :cond_2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 409
    :cond_2
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 410
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    shl-int/lit8 v4, v4, 0x15

    or-int/2addr v2, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_4

    .line 413
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v3, v4, :cond_3

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 414
    :cond_3
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 415
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr v2, v0

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    ushr-int/lit8 p1, v2, 0x1

    and-int/lit8 v0, v2, 0x1

    neg-int v0, v0

    xor-int v2, p1, v0

    :goto_0
    return v2
.end method

.method private readVarLong_slow(Z)J
    .locals 8

    .line 566
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 567
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit8 v2, v0, 0x7f

    int-to-long v2, v2

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    .line 570
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v0, v4, :cond_0

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 572
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 573
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit8 v5, v4, 0x7f

    shl-int/lit8 v5, v5, 0x7

    int-to-long v5, v5

    or-long/2addr v2, v5

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_8

    .line 576
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v4, v5, :cond_1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 577
    :cond_1
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 578
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit8 v5, v4, 0x7f

    shl-int/lit8 v5, v5, 0xe

    int-to-long v5, v5

    or-long/2addr v2, v5

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_8

    .line 581
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v4, v5, :cond_2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 582
    :cond_2
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 583
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit8 v5, v4, 0x7f

    shl-int/lit8 v5, v5, 0x15

    int-to-long v5, v5

    or-long/2addr v2, v5

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_8

    .line 586
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v4, v5, :cond_3

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 587
    :cond_3
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 588
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    const/16 v7, 0x1c

    shl-long/2addr v5, v7

    or-long/2addr v2, v5

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_8

    .line 591
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v4, v5, :cond_4

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 592
    :cond_4
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 593
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    const/16 v7, 0x23

    shl-long/2addr v5, v7

    or-long/2addr v2, v5

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_8

    .line 596
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v4, v5, :cond_5

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 597
    :cond_5
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 598
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    const/16 v7, 0x2a

    shl-long/2addr v5, v7

    or-long/2addr v2, v5

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_8

    .line 601
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v4, v5, :cond_6

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 602
    :cond_6
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 603
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    const/16 v7, 0x31

    shl-long/2addr v5, v7

    or-long/2addr v2, v5

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_8

    .line 606
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v4, v5, :cond_7

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 607
    :cond_7
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 608
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    :cond_8
    if-eqz p1, :cond_9

    goto :goto_0

    :cond_9
    ushr-long v0, v2, v1

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    neg-long v2, v2

    xor-long/2addr v2, v0

    :goto_0
    return-wide v2
.end method

.method private setBufferLimit(Ljava/nio/Buffer;I)V
    .locals 0

    .line 313
    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method private setBufferPosition(Ljava/nio/Buffer;I)V
    .locals 0

    .line 309
    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public canReadVarInt()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 425
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    return v1

    .line 426
    :cond_0
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v0

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    return v2

    .line 427
    :cond_1
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    .line 428
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v0, 0x1

    .line 429
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2

    return v1

    :cond_2
    if-ne v5, v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v0, v5, 0x1

    .line 431
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_4

    return v1

    :cond_4
    if-ne v0, v3, :cond_5

    return v2

    :cond_5
    add-int/lit8 v5, v0, 0x1

    .line 433
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-ne v5, v3, :cond_7

    return v2

    :cond_7
    add-int/lit8 v0, v5, 0x1

    .line 435
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

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

    .line 622
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    sub-int/2addr v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x5

    .line 623
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return v1

    .line 624
    :cond_1
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    .line 625
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v0, 0x1

    .line 626
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2

    return v2

    :cond_2
    if-ne v5, v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v5, 0x1

    .line 628
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_4

    return v2

    :cond_4
    if-ne v0, v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v5, v0, 0x1

    .line 630
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_6

    return v2

    :cond_6
    if-ne v5, v3, :cond_7

    return v1

    :cond_7
    add-int/lit8 v0, v5, 0x1

    .line 632
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_8

    return v2

    :cond_8
    if-ne v0, v3, :cond_9

    return v1

    :cond_9
    add-int/lit8 v5, v0, 0x1

    .line 634
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_a

    return v2

    :cond_a
    if-ne v5, v3, :cond_b

    return v1

    :cond_b
    add-int/lit8 v0, v5, 0x1

    .line 636
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_c

    return v2

    :cond_c
    if-ne v0, v3, :cond_d

    return v1

    :cond_d
    add-int/lit8 v5, v0, 0x1

    .line 638
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_e

    return v2

    :cond_e
    if-ne v5, v3, :cond_f

    return v1

    :cond_f
    add-int/lit8 v0, v5, 0x1

    .line 640
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

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

    .line 296
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected fill(Ljava/nio/ByteBuffer;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->inputStream:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 143
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->tempBuffer:[B

    if-nez v0, :cond_1

    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->tempBuffer:[B

    .line 144
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-lez p3, :cond_3

    .line 147
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->inputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->tempBuffer:[B

    array-length v4, v3

    invoke-static {v4, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v2, v3, p2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ne v2, v1, :cond_2

    if-nez v0, :cond_3

    return v1

    .line 152
    :cond_2
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->tempBuffer:[B

    invoke-virtual {p1, v3, p2, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr p3, v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_3
    return v0

    :catch_0
    move-exception p1

    .line 158
    new-instance p2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getBuffer()[B
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This input does not used a byte[], see #getByteBuffer()."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method protected optional(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 206
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    return p1

    .line 208
    :cond_0
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->capacity:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 211
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->capacity:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->fill(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .line 212
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    invoke-direct {p0, v2, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 213
    :cond_1
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_0
    return v2

    :cond_2
    add-int/2addr v0, v1

    if-lt v0, p1, :cond_3

    .line 216
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    return p1

    .line 221
    :cond_3
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 222
    iget-wide v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->total:J

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->total:J

    const/4 v1, 0x0

    .line 223
    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 227
    :cond_4
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->capacity:I

    sub-int/2addr v4, v0

    invoke-virtual {p0, v3, v0, v4}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->fill(Ljava/nio/ByteBuffer;II)I

    move-result v3

    if-ne v3, v2, :cond_5

    goto :goto_1

    :cond_5
    add-int/2addr v0, v3

    if-lt v0, p1, :cond_4

    .line 232
    :goto_1
    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    .line 233
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v3, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    if-nez v0, :cond_6

    goto :goto_2

    .line 234
    :cond_6
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_2
    return v2
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 240
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 241
    :cond_0
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 242
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

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

    .line 246
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->read([BII)I

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

    .line 252
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, p3

    .line 254
    :cond_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 255
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr p2, v0

    .line 259
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    if-ne p3, v1, :cond_3

    return v2

    .line 265
    :cond_2
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v2, v3, :cond_0

    :cond_3
    :goto_0
    sub-int/2addr p3, v1

    return p3

    .line 250
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bytes cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 678
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 679
    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 680
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public readBooleans(I)[Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 944
    new-array v0, p1, [Z

    .line 945
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, p1, :cond_2

    .line 946
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_1

    .line 948
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    aput-boolean v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 949
    :cond_1
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    goto :goto_3

    :cond_2
    :goto_2
    if-ge v2, p1, :cond_3

    .line 952
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readBoolean()Z

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

    .line 323
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 324
    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 325
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public readByteUnsigned()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 329
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 330
    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 331
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readBytes([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 342
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 344
    :goto_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 345
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    sub-int/2addr p3, v0

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/2addr p2, v0

    .line 349
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->capacity:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 350
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    goto :goto_0

    .line 341
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

    .line 335
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 336
    invoke-virtual {p0, v0, v1, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readBytes([BII)V

    return-object v0
.end method

.method public readChar()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 700
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 701
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 702
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public readChars(I)[C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 930
    new-array v0, p1, [C

    shl-int/lit8 v1, p1, 0x1

    .line 931
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 932
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    :goto_0
    if-ge v3, p1, :cond_0

    .line 934
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    int-to-char v2, v2

    aput-char v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 935
    :cond_0
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    .line 938
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readChar()C

    move-result v1

    aput-char v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public readDouble()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 661
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 662
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 663
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v2, v0

    .line 664
    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 665
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 666
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v0, v3, 0x8

    or-int/2addr v0, v2

    .line 667
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    int-to-long v2, v0

    .line 668
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    const/16 v0, 0x18

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    .line 669
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    const/16 v0, 0x20

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    .line 670
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    const/16 v0, 0x28

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    .line 671
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    const/16 v0, 0x30

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    .line 672
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-long v0, v0

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    .line 665
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readDoubles(I)[D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 894
    new-array v0, p1, [D

    shl-int/lit8 v1, p1, 0x3

    .line 895
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 896
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    :goto_0
    if-ge v3, p1, :cond_0

    .line 898
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 899
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    .line 900
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    int-to-long v4, v2

    .line 901
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    const/16 v2, 0x18

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    .line 902
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    const/16 v2, 0x20

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    .line 903
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    const/16 v2, 0x28

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    .line 904
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    const/16 v2, 0x30

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    .line 905
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    int-to-long v6, v2

    const/16 v2, 0x38

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    .line 898
    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 907
    :cond_0
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    .line 910
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readDouble()D

    move-result-wide v1

    aput-wide v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public readFloat()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 648
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 649
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 650
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v2, v0

    .line 651
    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 652
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 653
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 654
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    .line 655
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 652
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFloats(I)[F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 876
    new-array v0, p1, [F

    shl-int/lit8 v1, p1, 0x2

    .line 877
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 878
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    :goto_0
    if-ge v3, p1, :cond_0

    .line 880
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 881
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    .line 882
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    .line 883
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v2, v4

    .line 880
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    aput v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 885
    :cond_0
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    .line 888
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readFloat()F

    move-result v1

    aput v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public readInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 357
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 358
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 359
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 360
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 361
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 362
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 363
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public readInts(I)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 836
    new-array v0, p1, [I

    shl-int/lit8 v1, p1, 0x2

    .line 837
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 838
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    :goto_0
    if-ge v3, p1, :cond_0

    .line 840
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 841
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    .line 842
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    .line 843
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v2, v4

    aput v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 845
    :cond_0
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    .line 848
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v1

    aput v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public readLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 510
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 511
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 512
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 513
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 514
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v0, v3, 0x8

    or-int/2addr v0, v2

    .line 515
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    int-to-long v2, v0

    .line 516
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    const/16 v0, 0x18

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    .line 517
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    const/16 v0, 0x20

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    .line 518
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    const/16 v0, 0x28

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    .line 519
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    const/16 v0, 0x30

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    .line 520
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-long v0, v0

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readLongs(I)[J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 854
    new-array v0, p1, [J

    shl-int/lit8 v1, p1, 0x3

    .line 855
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 856
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    :goto_0
    if-ge v3, p1, :cond_0

    .line 858
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 859
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    .line 860
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    int-to-long v4, v2

    .line 861
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    const/16 v2, 0x18

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    .line 862
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    const/16 v2, 0x20

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    .line 863
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    const/16 v2, 0x28

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    .line 864
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    const/16 v2, 0x30

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    .line 865
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    int-to-long v6, v2

    const/16 v2, 0x38

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 867
    :cond_0
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    .line 870
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readLong()J

    move-result-wide v1

    aput-wide v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public readShort()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 686
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 687
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 688
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readShortUnsigned()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 692
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 693
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 694
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public readShorts(I)[S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 916
    new-array v0, p1, [S

    shl-int/lit8 v1, p1, 0x1

    .line 917
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 918
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    :goto_0
    if-ge v3, p1, :cond_0

    .line 920
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    int-to-short v2, v2

    aput-short v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 921
    :cond_0
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    .line 924
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readShort()S

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

    .line 708
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readVarIntFlag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readAsciiString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 710
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readVarIntFlag(Z)I

    move-result v1

    if-eqz v1, :cond_2

    if-eq v1, v0, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 718
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readUtf8Chars(I)V

    .line 719
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->chars:[C

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

    .line 723
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readVarIntFlag()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readAsciiString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 725
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readVarIntFlag(Z)I

    move-result v1

    if-eqz v1, :cond_2

    if-eq v1, v0, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 733
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readUtf8Chars(I)V

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 735
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->chars:[C

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-object v0

    .line 730
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public readVarInt(Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 367
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readVarInt_slow(Z)I

    move-result p1

    return p1

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 372
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v1, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    .line 375
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v1, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    .line 378
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v1, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    .line 381
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr v1, v0

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    ushr-int/lit8 p1, v1, 0x1

    and-int/lit8 v0, v1, 0x1

    neg-int v0, v0

    xor-int v1, p1, v0

    :goto_0
    return v1
.end method

.method public readVarIntFlag(Z)I
    .locals 4

    const/4 v0, 0x1

    .line 450
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readVarIntFlag_slow(Z)I

    move-result p1

    return p1

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit8 v1, v0, 0x3f

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 455
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v1, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    .line 458
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0xd

    or-int/2addr v1, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    .line 461
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x14

    or-int/2addr v1, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    .line 464
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1b

    or-int/2addr v1, v0

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    ushr-int/lit8 p1, v1, 0x1

    and-int/lit8 v0, v1, 0x1

    neg-int v0, v0

    xor-int v1, p1, v0

    :goto_0
    return v1
.end method

.method public readVarIntFlag()Z
    .locals 3

    .line 443
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public readVarLong(Z)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 524
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readVarLong_slow(Z)J

    move-result-wide v0

    return-wide v0

    .line 525
    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit8 v2, v1, 0x7f

    int-to-long v2, v2

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 528
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 529
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit8 v5, v4, 0x7f

    shl-int/lit8 v5, v5, 0x7

    int-to-long v5, v5

    or-long/2addr v2, v5

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    .line 532
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit8 v5, v4, 0x7f

    shl-int/lit8 v5, v5, 0xe

    int-to-long v5, v5

    or-long/2addr v2, v5

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    .line 535
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit8 v5, v4, 0x7f

    shl-int/lit8 v5, v5, 0x15

    int-to-long v5, v5

    or-long/2addr v2, v5

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    .line 538
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    const/16 v7, 0x1c

    shl-long/2addr v5, v7

    or-long/2addr v2, v5

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    .line 541
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    const/16 v7, 0x23

    shl-long/2addr v5, v7

    or-long/2addr v2, v5

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    .line 544
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    const/16 v7, 0x2a

    shl-long/2addr v5, v7

    or-long/2addr v2, v5

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    .line 547
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    const/16 v7, 0x31

    shl-long/2addr v5, v7

    or-long/2addr v2, v5

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    .line 550
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    int-to-long v4, v1

    const/16 v1, 0x38

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 560
    :cond_1
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v1

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    ushr-long v0, v2, v0

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    neg-long v2, v2

    xor-long/2addr v2, v0

    :goto_0
    return-wide v2
.end method

.method protected require(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 163
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    return v0

    .line 165
    :cond_0
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->capacity:I

    if-gt p1, v1, :cond_6

    const-string v1, "Buffer underflow."

    const/4 v2, -0x1

    if-lez v0, :cond_2

    .line 171
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->capacity:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v3, v4, v5}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->fill(Ljava/nio/ByteBuffer;II)I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 173
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    invoke-direct {p0, v4, v5}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    add-int/2addr v0, v3

    if-lt v0, p1, :cond_2

    .line 176
    iget p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    return v0

    .line 172
    :cond_1
    new-instance p1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {p1, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 182
    :cond_2
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 183
    iget-wide v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->total:J

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->total:J

    const/4 v3, 0x0

    .line 184
    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 188
    :cond_3
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->capacity:I

    sub-int/2addr v5, v0

    invoke-virtual {p0, v4, v0, v5}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->fill(Ljava/nio/ByteBuffer;II)I

    move-result v4

    if-ne v4, v2, :cond_5

    if-lt v0, p1, :cond_4

    goto :goto_0

    .line 191
    :cond_4
    new-instance p1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {p1, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    add-int/2addr v0, v4

    if-lt v0, p1, :cond_3

    .line 196
    :goto_0
    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    .line 197
    iget-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    return v0

    .line 165
    :cond_6
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Buffer too small: capacity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->capacity:I

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

    .line 134
    invoke-super {p0}, Lcom/esotericsoftware/kryo/io/Input;->reset()V

    .line 135
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    return-void
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 115
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 116
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 117
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    .line 118
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->capacity:I

    const-wide/16 v0, 0x0

    .line 119
    iput-wide v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->total:J

    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->inputStream:Ljava/io/InputStream;

    return-void

    .line 114
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "buffer cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBuffer([B)V
    .locals 1

    .line 100
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This input does not used a byte[], see #setByteBuffer(ByteBuffer)."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBuffer([BII)V
    .locals 0

    .line 107
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This input does not used a byte[], see #setByteBufferByteBuffer()."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->inputStream:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 129
    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    .line 130
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->reset()V

    return-void
.end method

.method public setLimit(I)V
    .locals 1

    .line 276
    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    .line 277
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBufferLimit(Ljava/nio/Buffer;I)V

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 271
    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 272
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

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

    .line 288
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 289
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->skip(I)V

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public skip(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 281
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->skip(I)V

    .line 282
    iget-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    return-void
.end method
