.class public Lcom/esotericsoftware/kryo/io/ByteBufferOutput;
.super Lcom/esotericsoftware/kryo/io/Output;
.source "ByteBufferOutput.java"


# static fields
.field private static final nativeOrder:Ljava/nio/ByteOrder;


# instance fields
.field protected byteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->nativeOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Output;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 57
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Output;-><init>()V

    const/4 v0, -0x1

    if-lt p2, v0, :cond_1

    .line 59
    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    if-ne p2, v0, :cond_0

    const p2, 0x7ffffff7

    .line 60
    :cond_0
    iput p2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->maxCapacity:I

    .line 61
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    return-void

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "maxBufferSize cannot be < -1: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/16 v0, 0x1000

    .line 78
    invoke-direct {p0, v0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(II)V

    if-eqz p1, :cond_0

    .line 80
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->outputStream:Ljava/io/OutputStream;

    return-void

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "outputStream cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p2, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(II)V

    if-eqz p1, :cond_0

    .line 87
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->outputStream:Ljava/io/OutputStream;

    return-void

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "outputStream cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Output;-><init>()V

    .line 66
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Output;-><init>()V

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBuffer(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method private getBufferPosition(Ljava/nio/Buffer;)I
    .locals 0

    .line 170
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    return p1
.end method

.method private setBufferLimit(Ljava/nio/Buffer;I)V
    .locals 0

    .line 178
    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method private setBufferPosition(Ljava/nio/Buffer;I)V
    .locals 0

    .line 174
    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private writeAscii_slow(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 643
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 645
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_1

    .line 647
    new-array v4, p2, [B

    add-int v5, v3, v1

    .line 648
    invoke-virtual {p1, v3, v5, v4, v2}, Ljava/lang/String;->getBytes(II[BI)V

    .line 649
    invoke-virtual {v0, v4, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 651
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int v1, p2, v5

    .line 652
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 653
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeUtf8_slow(Ljava/lang/String;II)V
    .locals 4

    :goto_0
    if-ge p3, p2, :cond_4

    .line 622
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    sub-int v1, p2, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 623
    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 624
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_1

    .line 626
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    const/16 v2, 0x7ff

    if-le v0, v2, :cond_2

    .line 628
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0xf

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    .line 629
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 630
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 631
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    shr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 632
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 634
    :cond_2
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x1f

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 635
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    if-ne v2, v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 636
    :cond_3
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 637
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->flush()V

    .line 222
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    new-array v0, v0, [B

    .line 209
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 210
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 211
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 212
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->outputStream:Ljava/io/OutputStream;

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    iget-wide v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->total:J

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    int-to-long v3, v3

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->total:J

    .line 217
    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    return-void

    :catch_0
    move-exception v0

    .line 214
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBuffer()[B
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This buffer does not used a byte[], see #getByteBuffer()."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method protected require(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 182
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-lt v0, p1, :cond_0

    return v1

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->flush()V

    .line 184
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v0, v2

    const/4 v2, 0x1

    if-lt v0, p1, :cond_1

    return v2

    .line 185
    :cond_1
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->maxCapacity:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_3

    .line 186
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->maxCapacity:I

    const-string v1, ", required: "

    if-le p1, v0, :cond_2

    .line 187
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Buffer overflow. Max capacity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->maxCapacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_2
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Buffer overflow. Available: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->maxCapacity:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_3
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    if-nez v0, :cond_4

    const/16 v0, 0x10

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    .line 192
    :cond_4
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    mul-int/lit8 v0, v0, 0x2

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->maxCapacity:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    .line 193
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v0, v3

    if-lt v0, p1, :cond_4

    .line 194
    iget-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p1

    if-nez p1, :cond_5

    iget p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    :cond_5
    iget p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 196
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBufferLimit(Ljava/nio/Buffer;I)V

    .line 197
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 198
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 199
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    return v2
.end method

.method public reset()V
    .locals 2

    .line 165
    invoke-super {p0}, Lcom/esotericsoftware/kryo/io/Output;->reset()V

    .line 166
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBufferPosition(Ljava/nio/Buffer;I)V

    return-void
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 128
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBuffer(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;I)V
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    if-lt p2, v0, :cond_1

    .line 139
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    if-ne p2, v0, :cond_0

    const p2, 0x7ffffff7

    .line 140
    :cond_0
    iput p2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->maxCapacity:I

    .line 141
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    iput p2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    .line 142
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    const-wide/16 p1, 0x0

    .line 143
    iput-wide p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->total:J

    const/4 p1, 0x0

    .line 144
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->outputStream:Ljava/io/OutputStream;

    return-void

    .line 138
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "maxBufferSize cannot be < -1: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "buffer cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBuffer([B)V
    .locals 1

    .line 105
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This buffer does not used a byte[], see #setByteBuffer(ByteBuffer)."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBuffer([BI)V
    .locals 0

    .line 112
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This buffer does not used a byte[], see #setByteBuffer(ByteBuffer)."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBuffer([BII)V
    .locals 1

    .line 118
    array-length v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    .line 120
    invoke-direct {p0, v0, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 121
    array-length p1, p1

    invoke-direct {p0, v0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBufferLimit(Ljava/nio/Buffer;I)V

    .line 122
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 160
    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 161
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBufferPosition(Ljava/nio/Buffer;I)V

    return-void
.end method

.method public toBytes()[B
    .locals 4

    .line 153
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    new-array v0, v0, [B

    .line 154
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 155
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 231
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 233
    iget p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 238
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeBytes([BII)V

    return-void

    .line 237
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bytes cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 242
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeBytes([BII)V

    return-void
.end method

.method public writeAscii(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/16 v0, 0x80

    if-nez p1, :cond_0

    .line 601
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeByte(I)V

    return-void

    .line 604
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/16 p1, 0x81

    .line 606
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeByte(I)V

    return-void

    .line 609
    :cond_1
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v2, v3

    if-ge v2, v1, :cond_2

    .line 610
    invoke-direct {p0, p1, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeAscii_slow(Ljava/lang/String;I)V

    goto :goto_1

    .line 612
    :cond_2
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 613
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 614
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 615
    :cond_3
    iget p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 617
    :goto_1
    iget-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    or-int/2addr v0, v2

    int-to-byte v0, v0

    invoke-virtual {p1, v1, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 547
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 549
    iget p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    return-void
.end method

.method public writeBooleans([ZII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 770
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    if-lt v0, p3, :cond_1

    .line 771
    invoke-virtual {p0, p3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    .line 773
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    aget-boolean v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 774
    :cond_0
    iget-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    goto :goto_2

    :cond_1
    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_2

    .line 777
    aget-boolean v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeBoolean(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public writeByte(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 248
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 250
    iget p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    return-void
.end method

.method public writeByte(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 254
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 256
    iget p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    return-void
.end method

.method public writeBytes([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 261
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeBytes([BII)V

    return-void

    .line 260
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bytes cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeBytes([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 266
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 268
    :goto_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 269
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr p3, v0

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/2addr p2, v0

    .line 273
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 274
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    goto :goto_0

    .line 265
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bytes cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeChar(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 538
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 539
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 540
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 541
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    ushr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeChars([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 755
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    shl-int/lit8 v1, p3, 0x1

    if-lt v0, v1, :cond_1

    .line 756
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    .line 758
    aget-char v0, p1, p2

    .line 759
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 760
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 762
    :cond_0
    iget-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    goto :goto_2

    :cond_1
    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_2

    .line 765
    aget-char v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeChar(C)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public writeDouble(D)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 512
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 513
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 514
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 515
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    long-to-int v2, p1

    int-to-byte v2, v2

    .line 516
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    .line 517
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x10

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    .line 518
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x18

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    .line 519
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x20

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    .line 520
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x28

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    .line 521
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x30

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    .line 522
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 523
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeDoubles([DII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 718
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    shl-int/lit8 v1, p3, 0x3

    if-lt v0, v1, :cond_1

    .line 719
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 720
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    .line 722
    aget-wide v1, p1, p2

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    long-to-int v3, v1

    int-to-byte v3, v3

    .line 723
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x8

    ushr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 724
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x10

    ushr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 725
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x18

    ushr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 726
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 727
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x28

    ushr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 728
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x30

    ushr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 729
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x38

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 730
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 732
    :cond_0
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    goto :goto_2

    :cond_1
    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_2

    .line 735
    aget-wide v0, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeDouble(D)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public writeFloat(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 499
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 500
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 501
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 502
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    int-to-byte v0, p1

    .line 503
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    .line 504
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    .line 505
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 506
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeFloats([FII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 700
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    shl-int/lit8 v1, p3, 0x2

    if-lt v0, v1, :cond_1

    .line 701
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 702
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    .line 704
    aget v1, p1, p2

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    int-to-byte v2, v1

    .line 705
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    .line 706
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    .line 707
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    .line 708
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 710
    :cond_0
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    goto :goto_2

    :cond_1
    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_2

    .line 713
    aget v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeFloat(F)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public writeInt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 281
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 282
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 283
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    .line 284
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    .line 285
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    .line 286
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 287
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeInts([III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 660
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    shl-int/lit8 v1, p3, 0x2

    if-lt v0, v1, :cond_1

    .line 661
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 662
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    .line 664
    aget v1, p1, p2

    int-to-byte v2, v1

    .line 665
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    .line 666
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    .line 667
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    .line 668
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 670
    :cond_0
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    goto :goto_2

    :cond_1
    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_2

    .line 673
    aget v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public writeLong(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 384
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 385
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 386
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    long-to-int v2, p1

    int-to-byte v2, v2

    .line 387
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    .line 388
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x10

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    .line 389
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x18

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    .line 390
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x20

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    .line 391
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x28

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    .line 392
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x30

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    .line 393
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 394
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeLongs([JII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 678
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    shl-int/lit8 v1, p3, 0x3

    if-lt v0, v1, :cond_1

    .line 679
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 680
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    .line 682
    aget-wide v1, p1, p2

    long-to-int v3, v1

    int-to-byte v3, v3

    .line 683
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x8

    ushr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 684
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x10

    ushr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 685
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x18

    ushr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 686
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 687
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x28

    ushr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 688
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x30

    ushr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 689
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x38

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 690
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 692
    :cond_0
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    goto :goto_2

    :cond_1
    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_2

    .line 695
    aget-wide v0, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeLong(J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public writeShort(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 529
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 530
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 531
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 532
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    ushr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeShorts([SII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 740
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    shl-int/lit8 v1, p3, 0x1

    if-lt v0, v1, :cond_1

    .line 741
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    .line 743
    aget-short v0, p1, p2

    .line 744
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 745
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 747
    :cond_0
    iget-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    goto :goto_2

    :cond_1
    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_2

    .line 750
    aget-short v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeShort(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/16 v0, 0x80

    if-nez p1, :cond_0

    .line 556
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeByte(I)V

    return-void

    .line 559
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/16 p1, 0x81

    .line 561
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeByte(I)V

    return-void

    :cond_1
    const/16 v2, 0x7f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v4, :cond_6

    const/16 v5, 0x20

    if-gt v1, v5, :cond_6

    move v5, v3

    :goto_0
    if-ge v5, v1, :cond_3

    .line 568
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-le v6, v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 569
    :cond_3
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v2, v5

    if-ge v2, v1, :cond_4

    .line 570
    invoke-direct {p0, p1, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeAscii_slow(Ljava/lang/String;I)V

    goto :goto_2

    .line 572
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_5

    .line 573
    iget-object v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 574
    :cond_5
    iget p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 576
    :goto_2
    iget-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v1, v4

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    or-int/2addr v0, v2

    int-to-byte v0, v0

    invoke-virtual {p1, v1, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void

    :cond_6
    :goto_3
    add-int/lit8 v0, v1, 0x1

    .line 579
    invoke-virtual {p0, v4, v0, v4}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeVarIntFlag(ZIZ)I

    .line 581
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    sub-int/2addr v0, v4

    if-lt v0, v1, :cond_9

    .line 583
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 585
    :cond_7
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-le v4, v2, :cond_8

    .line 594
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    goto :goto_4

    :cond_8
    int-to-byte v4, v4

    .line 587
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_7

    .line 590
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    return-void

    :cond_9
    :goto_4
    if-ge v3, v1, :cond_a

    .line 596
    invoke-direct {p0, p1, v1, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeUtf8_slow(Ljava/lang/String;II)V

    :cond_a
    return-void
.end method

.method public writeVarInt(IZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    if-nez p2, :cond_0

    shl-int/lit8 p2, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    :cond_0
    ushr-int/lit8 p2, p1, 0x7

    if-nez p2, :cond_2

    .line 293
    iget p2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 294
    :cond_1
    iget p2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 295
    iget-object p2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v1

    :cond_2
    ushr-int/lit8 v0, p1, 0xe

    if-nez v0, :cond_3

    const/4 v0, 0x2

    .line 299
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 300
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 301
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 302
    iget-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v0

    :cond_3
    ushr-int/lit8 v1, p1, 0x15

    if-nez v1, :cond_4

    const/4 v1, 0x3

    .line 306
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 307
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 308
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    .line 309
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-int/lit16 p1, p2, 0x80

    int-to-byte p1, p1

    .line 310
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte p1, v0

    .line 311
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v1

    :cond_4
    ushr-int/lit8 v2, p1, 0x1c

    if-nez v2, :cond_5

    const/4 v2, 0x4

    .line 315
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 316
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 317
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    .line 318
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-int/lit16 p1, p2, 0x80

    int-to-byte p1, p1

    .line 319
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-int/lit16 p1, v0, 0x80

    int-to-byte p1, p1

    .line 320
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte p1, v1

    .line 321
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v2

    :cond_5
    const/4 v3, 0x5

    .line 324
    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 325
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 326
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    .line 327
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-int/lit16 p1, p2, 0x80

    int-to-byte p1, p1

    .line 328
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-int/lit16 p1, v0, 0x80

    int-to-byte p1, p1

    .line 329
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-int/lit16 p1, v1, 0x80

    int-to-byte p1, p1

    .line 330
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte p1, v2

    .line 331
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v3
.end method

.method public writeVarIntFlag(ZIZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    if-nez p3, :cond_0

    shl-int/lit8 p3, p2, 0x1

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, p3

    :cond_0
    and-int/lit8 p3, p2, 0x3f

    const/16 v0, 0x80

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, p3

    ushr-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_3

    .line 339
    iget p2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    iget p3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    const/4 v0, 0x1

    if-ne p2, p3, :cond_2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 340
    :cond_2
    iget-object p2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 341
    iget p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    return v0

    :cond_3
    ushr-int/lit8 v1, p2, 0xd

    if-nez v1, :cond_4

    const/4 p2, 0x2

    .line 345
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 346
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 347
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 348
    iget-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte p3, p3

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return p2

    :cond_4
    ushr-int/lit8 v2, p2, 0x14

    if-nez v2, :cond_5

    const/4 p2, 0x3

    .line 352
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 353
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 354
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    .line 355
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-int/lit16 p1, p3, 0x80

    int-to-byte p1, p1

    .line 356
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte p1, v1

    .line 357
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return p2

    :cond_5
    ushr-int/lit8 p2, p2, 0x1b

    if-nez p2, :cond_6

    const/4 p2, 0x4

    .line 361
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 362
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v3, p2

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 363
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    .line 364
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-int/lit16 p1, p3, 0x80

    int-to-byte p1, p1

    .line 365
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-int/lit16 p1, v1, 0x80

    int-to-byte p1, p1

    .line 366
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte p1, v2

    .line 367
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return p2

    :cond_6
    const/4 v3, 0x5

    .line 370
    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 371
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 372
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    .line 373
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-int/lit16 p1, p3, 0x80

    int-to-byte p1, p1

    .line 374
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-int/lit16 p1, v1, 0x80

    int-to-byte p1, p1

    .line 375
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-int/lit16 p1, v2, 0x80

    int-to-byte p1, p1

    .line 376
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte p1, p2

    .line 377
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v3
.end method

.method public writeVarLong(JZ)I
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    shl-long v2, p1, v1

    const/16 v4, 0x3f

    shr-long v4, p1, v4

    xor-long/2addr v2, v4

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    const/4 v4, 0x7

    ushr-long v5, v2, v4

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    .line 400
    iget v4, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    iget v5, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->capacity:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 401
    :cond_1
    iget v4, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v4, v1

    iput v4, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 402
    iget-object v4, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v1

    :cond_2
    const/16 v1, 0xe

    ushr-long v9, v2, v1

    cmp-long v1, v9, v7

    const-wide/16 v11, 0x7f

    const-wide/16 v13, 0x80

    if-nez v1, :cond_3

    const/4 v1, 0x2

    .line 406
    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 407
    iget v4, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v4, v1

    iput v4, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 408
    iget-object v4, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    and-long/2addr v2, v11

    or-long/2addr v2, v13

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 409
    iget-object v2, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    long-to-int v3, v5

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v1

    :cond_3
    const/16 v1, 0x15

    move-wide/from16 p2, v5

    ushr-long v4, v2, v1

    cmp-long v1, v4, v7

    if-nez v1, :cond_4

    const/4 v1, 0x3

    .line 413
    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 414
    iget v4, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v4, v1

    iput v4, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 415
    iget-object v4, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    and-long/2addr v2, v11

    or-long/2addr v2, v13

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 416
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-wide/from16 v15, p2

    or-long v2, v15, v13

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 417
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    long-to-int v2, v9

    int-to-byte v2, v2

    .line 418
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v1

    :cond_4
    move-wide/from16 v15, p2

    const/16 v1, 0x1c

    ushr-long v13, v2, v1

    cmp-long v1, v13, v7

    if-nez v1, :cond_5

    const/4 v1, 0x4

    .line 422
    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 423
    iget v6, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v6, v1

    iput v6, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 424
    iget-object v6, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    and-long/2addr v2, v11

    const-wide/16 v7, 0x80

    or-long/2addr v2, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 425
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v15, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 426
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v9, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 427
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    long-to-int v2, v4

    int-to-byte v2, v2

    .line 428
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v1

    :cond_5
    const/16 v1, 0x23

    ushr-long v11, v2, v1

    cmp-long v1, v11, v7

    if-nez v1, :cond_6

    const/4 v1, 0x5

    .line 432
    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 433
    iget v6, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v6, v1

    iput v6, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 434
    iget-object v6, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v7, 0x7f

    and-long/2addr v2, v7

    const-wide/16 v7, 0x80

    or-long/2addr v2, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 435
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v15, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 436
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v9, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 437
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v4, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 438
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    long-to-int v2, v13

    int-to-byte v2, v2

    .line 439
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v1

    :cond_6
    const/16 v1, 0x2a

    move-wide/from16 v19, v11

    ushr-long v11, v2, v1

    cmp-long v1, v11, v7

    if-nez v1, :cond_7

    const/4 v1, 0x6

    .line 443
    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 444
    iget v6, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v6, v1

    iput v6, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 445
    iget-object v6, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v7, 0x7f

    and-long/2addr v2, v7

    const-wide/16 v7, 0x80

    or-long/2addr v2, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 446
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v15, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 447
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v9, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 448
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v4, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 449
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v13, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 450
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-wide/from16 v2, v19

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 451
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v1

    :cond_7
    const/16 v1, 0x31

    move-wide/from16 v21, v11

    ushr-long v11, v2, v1

    cmp-long v1, v11, v7

    if-nez v1, :cond_8

    const/4 v1, 0x7

    .line 455
    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 456
    iget v6, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v6, v1

    iput v6, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 457
    iget-object v1, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v6, 0x7f

    and-long/2addr v2, v6

    const-wide/16 v6, 0x80

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 458
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v15, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 459
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v9, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 460
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v4, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 461
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v13, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 462
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v19, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 463
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-wide/from16 v2, v21

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 464
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x7

    return v1

    :cond_8
    const/16 v1, 0x38

    move-wide/from16 v23, v11

    ushr-long v11, v2, v1

    cmp-long v1, v11, v7

    if-nez v1, :cond_9

    const/16 v1, 0x8

    .line 468
    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 469
    iget v6, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v6, v1

    iput v6, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 470
    iget-object v6, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v7, 0x7f

    and-long/2addr v2, v7

    const-wide/16 v7, 0x80

    or-long/2addr v2, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 471
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v15, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 472
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v9, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 473
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v4, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 474
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v13, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 475
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v19, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 476
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v21, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 477
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-wide/from16 v7, v23

    long-to-int v2, v7

    int-to-byte v2, v2

    .line 478
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v1

    :cond_9
    move-wide/from16 v7, v23

    const/16 v1, 0x9

    .line 481
    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    .line 482
    iget v6, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    add-int/2addr v6, v1

    iput v6, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->position:I

    .line 483
    iget-object v6, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v17, 0x7f

    and-long v2, v2, v17

    const-wide/16 v17, 0x80

    or-long v2, v2, v17

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 484
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v15, v17

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 485
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v9, v17

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 486
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v4, v17

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 487
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v13, v17

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 488
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v19, v17

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 489
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v21, v17

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 490
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v7, v17

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 491
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    long-to-int v2, v11

    int-to-byte v2, v2

    .line 492
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v1
.end method
