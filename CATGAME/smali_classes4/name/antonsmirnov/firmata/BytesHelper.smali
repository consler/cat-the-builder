.class public Lname/antonsmirnov/firmata/BytesHelper;
.super Ljava/lang/Object;
.source "BytesHelper.java"


# static fields
.field public static final BITS_IN_BYTE:I = 0x8

.field public static final BYTE_MAX_VALUE:I = 0xff


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DECODE_BYTE(II)I
    .locals 1
    .param p0, "lsb"    # I
    .param p1, "msb"    # I

    .line 68
    shl-int/lit8 v0, p1, 0x7

    add-int/2addr v0, p0

    return v0
.end method

.method public static DECODE_CHANNEL(I)I
    .locals 1
    .param p0, "incomingByte"    # I

    .line 37
    and-int/lit8 v0, p0, 0xf

    return v0
.end method

.method public static DECODE_COMMAND(I)I
    .locals 1
    .param p0, "incomingByte"    # I

    .line 25
    const/16 v0, 0xf0

    if-ge p0, v0, :cond_0

    and-int/lit16 v0, p0, 0xf0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method public static DECODE_INT_ARRAY([BII)[I
    .locals 6
    .param p0, "buffer"    # [B
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 98
    move v0, p1

    .line 99
    .local v0, "offset":I
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    .line 100
    .local v1, "length":I
    new-array v2, v1, [I

    .line 101
    .local v2, "intBuffer":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 102
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "offset":I
    .local v4, "offset":I
    aget-byte v0, p0, v0

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    aget-byte v4, p0, v4

    invoke-static {v0, v4}, Lname/antonsmirnov/firmata/BytesHelper;->DECODE_BYTE(II)I

    move-result v0

    aput v0, v2, v3

    .line 101
    add-int/lit8 v3, v3, 0x1

    move v0, v5

    goto :goto_0

    .line 104
    .end local v3    # "i":I
    .end local v5    # "offset":I
    .restart local v0    # "offset":I
    :cond_0
    return-object v2
.end method

.method public static DECODE_STRING([BII)Ljava/lang/String;
    .locals 6
    .param p0, "buffer"    # [B
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v0, "sb":Ljava/lang/StringBuilder;
    move v1, p1

    .line 82
    .local v1, "offset":I
    sub-int v2, p2, p1

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    .line 83
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 84
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "offset":I
    .local v4, "offset":I
    aget-byte v1, p0, v1

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    aget-byte v4, p0, v4

    invoke-static {v1, v4}, Lname/antonsmirnov/firmata/BytesHelper;->DECODE_BYTE(II)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    add-int/lit8 v3, v3, 0x1

    move v1, v5

    goto :goto_0

    .line 86
    .end local v3    # "i":I
    .end local v5    # "offset":I
    .restart local v1    # "offset":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static ENCODE_CHANNEL(I)I
    .locals 1
    .param p0, "channel"    # I

    .line 15
    and-int/lit8 v0, p0, 0xf

    return v0
.end method

.method public static ENCODE_INT_ARRAY([I)[B
    .locals 3
    .param p0, "data"    # [I

    .line 127
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 128
    .local v0, "encoded_data":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lname/antonsmirnov/firmata/BytesHelper;->ENCODE_STRING([ILjava/nio/ByteBuffer;I)V

    .line 129
    return-object v0
.end method

.method public static ENCODE_STRING([BLjava/nio/ByteBuffer;I)V
    .locals 3
    .param p0, "original_data"    # [B
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 141
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offset":I
    .local v1, "offset":I
    aget-byte v2, p0, v0

    invoke-static {v2}, Lname/antonsmirnov/firmata/BytesHelper;->LSB(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p1, p2, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 142
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v2, p0, v0

    invoke-static {v2}, Lname/antonsmirnov/firmata/BytesHelper;->MSB(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static ENCODE_STRING([ILjava/nio/ByteBuffer;I)V
    .locals 3
    .param p0, "original_data"    # [I
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I

    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 155
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offset":I
    .local v1, "offset":I
    aget v2, p0, v0

    invoke-static {v2}, Lname/antonsmirnov/firmata/BytesHelper;->LSB(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p1, p2, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 156
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    aget v2, p0, v0

    invoke-static {v2}, Lname/antonsmirnov/firmata/BytesHelper;->MSB(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static ENCODE_STRING(Ljava/lang/String;)[B
    .locals 4
    .param p0, "data"    # Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 115
    .local v0, "original_data":[B
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 116
    .local v1, "encoded_data":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lname/antonsmirnov/firmata/BytesHelper;->ENCODE_STRING([BLjava/nio/ByteBuffer;I)V

    .line 117
    return-object v1
.end method

.method public static LSB(I)I
    .locals 1
    .param p0, "value"    # I

    .line 47
    and-int/lit8 v0, p0, 0x7f

    return v0
.end method

.method public static MSB(I)I
    .locals 1
    .param p0, "value"    # I

    .line 57
    shr-int/lit8 v0, p0, 0x7

    and-int/lit8 v0, v0, 0x7f

    return v0
.end method

.method private static bitMaskHigh(I)I
    .locals 1
    .param p0, "bit"    # I

    .line 175
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    return v0
.end method

.method private static bitMaskLow(I)I
    .locals 3
    .param p0, "bit"    # I

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "mask":I
    const/4 v1, 0x7

    .local v1, "eachBit":I
    :goto_0
    if-ltz v1, :cond_2

    .line 191
    if-ne v1, p0, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    or-int/2addr v0, v2

    .line 192
    if-lez v1, :cond_1

    .line 193
    shl-int/lit8 v0, v0, 0x1

    .line 190
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 195
    .end local v1    # "eachBit":I
    :cond_2
    return v0
.end method

.method public static getPin(II)Z
    .locals 1
    .param p0, "portValues"    # I
    .param p1, "pinInPort"    # I

    .line 250
    invoke-static {p1}, Lname/antonsmirnov/firmata/BytesHelper;->pinMaskHigh(I)I

    move-result v0

    and-int/2addr v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static pinInPort(I)I
    .locals 1
    .param p0, "pin"    # I

    .line 215
    rem-int/lit8 v0, p0, 0x8

    return v0
.end method

.method private static pinMaskHigh(I)I
    .locals 1
    .param p0, "pinInPort"    # I

    .line 185
    invoke-static {p0}, Lname/antonsmirnov/firmata/BytesHelper;->bitMaskHigh(I)I

    move-result v0

    return v0
.end method

.method private static pinMaskLow(I)I
    .locals 1
    .param p0, "pinInPort"    # I

    .line 205
    invoke-static {p0}, Lname/antonsmirnov/firmata/BytesHelper;->bitMaskLow(I)I

    move-result v0

    return v0
.end method

.method public static portByPin(I)I
    .locals 1
    .param p0, "pin"    # I

    .line 171
    div-int/lit8 v0, p0, 0x8

    return v0
.end method

.method public static setBit(IIZ)I
    .locals 1
    .param p0, "byteValue"    # I
    .param p1, "bit"    # I
    .param p2, "highLevel"    # Z

    .line 235
    if-eqz p2, :cond_0

    .line 236
    invoke-static {p1}, Lname/antonsmirnov/firmata/BytesHelper;->pinMaskHigh(I)I

    move-result v0

    or-int/2addr v0, p0

    return v0

    .line 238
    :cond_0
    invoke-static {p1}, Lname/antonsmirnov/firmata/BytesHelper;->pinMaskLow(I)I

    move-result v0

    and-int/2addr v0, p0

    return v0
.end method

.method public static setPin(IIZ)I
    .locals 1
    .param p0, "portValues"    # I
    .param p1, "pinInPort"    # I
    .param p2, "highLevel"    # Z

    .line 227
    if-eqz p2, :cond_0

    .line 228
    invoke-static {p1}, Lname/antonsmirnov/firmata/BytesHelper;->pinMaskHigh(I)I

    move-result v0

    or-int/2addr v0, p0

    return v0

    .line 230
    :cond_0
    invoke-static {p1}, Lname/antonsmirnov/firmata/BytesHelper;->pinMaskLow(I)I

    move-result v0

    and-int/2addr v0, p0

    return v0
.end method
