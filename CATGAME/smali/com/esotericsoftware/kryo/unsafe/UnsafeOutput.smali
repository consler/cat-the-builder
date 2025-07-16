.class public Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;
.super Lcom/esotericsoftware/kryo/io/Output;
.source "UnsafeOutput.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Output;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/Output;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/Output;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/Output;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 62
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/Output;-><init>([BI)V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 82
    iget v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->require(I)Z

    .line 83
    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->buffer:[B

    sget-wide v2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    iget v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    int-to-byte p1, p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 133
    iget v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->require(I)Z

    .line 134
    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->buffer:[B

    sget-wide v2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    iget v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method public writeBooleans([ZII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 162
    sget-wide p2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->booleanArrayBaseOffset:J

    array-length v0, p1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->writeBytes(Ljava/lang/Object;JI)V

    return-void
.end method

.method public writeByte(B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 87
    iget v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->require(I)Z

    .line 88
    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->buffer:[B

    sget-wide v2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    iget v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method public writeByte(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 92
    iget v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->require(I)Z

    .line 93
    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->buffer:[B

    sget-wide v2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    iget v4, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    int-to-byte p1, p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method public writeBytes(Ljava/lang/Object;JI)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 171
    iget v1, v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->capacity:I

    iget v2, v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    sub-int/2addr v1, v2

    move/from16 v2, p4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-wide/from16 v11, p2

    move v13, v1

    move v1, v2

    .line 173
    :goto_0
    sget-object v2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-object v6, v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->buffer:[B

    sget-wide v3, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    iget v5, v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    int-to-long v7, v5

    add-long/2addr v7, v3

    int-to-long v14, v13

    move-object/from16 v3, p1

    move-wide v4, v11

    move-wide v9, v14

    invoke-virtual/range {v2 .. v10}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 174
    iget v2, v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    add-int/2addr v2, v13

    iput v2, v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    sub-int/2addr v1, v13

    if-nez v1, :cond_0

    return-void

    :cond_0
    add-long/2addr v11, v14

    .line 178
    iget v2, v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->capacity:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 179
    invoke-virtual {v0, v13}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->require(I)Z

    goto :goto_0
.end method

.method public writeBytes([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 166
    sget-wide v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->writeBytes(Ljava/lang/Object;JI)V

    return-void
.end method

.method public writeChar(C)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 127
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->require(I)Z

    .line 128
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->buffer:[B

    sget-wide v3, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    iget v5, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4, p1}, Lsun/misc/Unsafe;->putChar(Ljava/lang/Object;JC)V

    .line 129
    iget p1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    return-void
.end method

.method public writeChars([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 158
    sget-wide p2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->charArrayBaseOffset:J

    array-length v0, p1

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->writeBytes(Ljava/lang/Object;JI)V

    return-void
.end method

.method public writeDouble(D)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 115
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->require(I)Z

    .line 116
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->buffer:[B

    sget-wide v3, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    iget v5, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-wide v5, p1

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    .line 117
    iget p1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    return-void
.end method

.method public writeDoubles([DII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 150
    sget-wide p2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->doubleArrayBaseOffset:J

    array-length v0, p1

    shl-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->writeBytes(Ljava/lang/Object;JI)V

    return-void
.end method

.method public writeFloat(F)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 109
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->require(I)Z

    .line 110
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->buffer:[B

    sget-wide v3, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    iget v5, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4, p1}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    .line 111
    iget p1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    return-void
.end method

.method public writeFloats([FII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 146
    sget-wide p2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->floatArrayBaseOffset:J

    array-length v0, p1

    shl-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->writeBytes(Ljava/lang/Object;JI)V

    return-void
.end method

.method public writeInt(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 97
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->require(I)Z

    .line 98
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->buffer:[B

    sget-wide v3, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    iget v5, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 99
    iget p1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    return-void
.end method

.method public writeInts([III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 138
    sget-wide p2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->intArrayBaseOffset:J

    array-length v0, p1

    shl-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->writeBytes(Ljava/lang/Object;JI)V

    return-void
.end method

.method public writeLong(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 103
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->require(I)Z

    .line 104
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->buffer:[B

    sget-wide v3, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    iget v5, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-wide v5, p1

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 105
    iget p1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    return-void
.end method

.method public writeLongs([JII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 142
    sget-wide p2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->longArrayBaseOffset:J

    array-length v0, p1

    shl-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->writeBytes(Ljava/lang/Object;JI)V

    return-void
.end method

.method public writeShort(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 121
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->require(I)Z

    .line 122
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->buffer:[B

    sget-wide v3, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    iget v5, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    int-to-short p1, p1

    invoke-virtual {v1, v2, v3, v4, p1}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 123
    iget p1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->position:I

    return-void
.end method

.method public writeShorts([SII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 154
    sget-wide p2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->shortArrayBaseOffset:J

    array-length v0, p1

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeOutput;->writeBytes(Ljava/lang/Object;JI)V

    return-void
.end method
