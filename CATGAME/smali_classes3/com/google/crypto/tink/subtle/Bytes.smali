.class public final Lcom/google/crypto/tink/subtle/Bytes;
.super Ljava/lang/Object;
.source "Bytes.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToInt([B)I
    .locals 1
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 155
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/crypto/tink/subtle/Bytes;->byteArrayToInt([BI)I

    move-result v0

    return v0
.end method

.method public static byteArrayToInt([BI)I
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bytes",
            "length"
        }
    .end annotation

    .line 165
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/crypto/tink/subtle/Bytes;->byteArrayToInt([BII)I

    move-result v0

    return v0
.end method

.method public static byteArrayToInt([BII)I
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "offset",
            "length"
        }
    .end annotation

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "value":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 178
    add-int v2, v1, p1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public static varargs concat([[B)[B
    .locals 8
    .param p0, "chunks"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chunks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "length":I
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 57
    .local v4, "chunk":[B
    const v5, 0x7fffffff

    array-length v6, v4

    sub-int/2addr v5, v6

    if-gt v0, v5, :cond_0

    .line 60
    array-length v5, v4

    add-int/2addr v0, v5

    .line 56
    .end local v4    # "chunk":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    .restart local v4    # "chunk":[B
    :cond_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "exceeded size limit"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    .end local v4    # "chunk":[B
    :cond_1
    new-array v1, v0, [B

    .line 63
    .local v1, "res":[B
    const/4 v3, 0x0

    .line 64
    .local v3, "pos":I
    array-length v4, p0

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, p0, v5

    .line 65
    .local v6, "chunk":[B
    array-length v7, v6

    invoke-static {v6, v2, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    array-length v7, v6

    add-int/2addr v3, v7

    .line 64
    .end local v6    # "chunk":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 68
    :cond_2
    return-object v1
.end method

.method public static final equal([B[B)Z
    .locals 5
    .param p0, "x"    # [B
    .param p1, "y"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    .line 39
    return v0

    .line 41
    :cond_1
    const/4 v1, 0x0

    .line 42
    .local v1, "res":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 43
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    xor-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    .end local v2    # "i":I
    :cond_2
    if-nez v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    .line 36
    .end local v1    # "res":I
    :cond_4
    :goto_1
    return v0
.end method

.method public static intToByteArray(II)[B
    .locals 3
    .param p0, "capacity"    # I
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "capacity",
            "value"
        }
    .end annotation

    .line 142
    new-array v0, p0, [B

    .line 143
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 144
    mul-int/lit8 v2, v1, 0x8

    shr-int v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static final xor(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p0, "output"    # Ljava/nio/ByteBuffer;
    .param p1, "x"    # Ljava/nio/ByteBuffer;
    .param p2, "y"    # Ljava/nio/ByteBuffer;
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "x",
            "y",
            "len"
        }
    .end annotation

    .line 96
    if-ltz p3, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p3, :cond_1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p3, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p3, :cond_1

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 101
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 97
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "That combination of buffers, offsets and length to xor result in out-of-bond accesses."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final xor([BI[BII)[B
    .locals 4
    .param p0, "x"    # [B
    .param p1, "offsetX"    # I
    .param p2, "y"    # [B
    .param p3, "offsetY"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10,
            0x0,
            0x0
        }
        names = {
            "x",
            "offsetX",
            "y",
            "offsetY",
            "len"
        }
    .end annotation

    .line 78
    if-ltz p4, :cond_1

    array-length v0, p0

    sub-int/2addr v0, p4

    if-lt v0, p1, :cond_1

    array-length v0, p2

    sub-int/2addr v0, p4

    if-lt v0, p3, :cond_1

    .line 82
    new-array v0, p4, [B

    .line 83
    .local v0, "res":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_0

    .line 84
    add-int v2, v1, p1

    aget-byte v2, p0, v2

    add-int v3, v1, p3

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 79
    .end local v0    # "res":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "That combination of buffers, offsets and length to xor result in out-of-bond accesses."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final xor([B[B)[B
    .locals 2
    .param p0, "x"    # [B
    .param p1, "y"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 111
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 114
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Lcom/google/crypto/tink/subtle/Bytes;->xor([BI[BII)[B

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The lengths of x and y should match."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final xorEnd([B[B)[B
    .locals 6
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 123
    array-length v0, p0

    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 126
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    .line 127
    .local v0, "paddingLength":I
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 128
    .local v1, "res":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 129
    add-int v3, v0, v2

    aget-byte v4, v1, v3

    aget-byte v5, p1, v2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 124
    .end local v0    # "paddingLength":I
    .end local v1    # "res":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "xorEnd requires a.length >= b.length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
