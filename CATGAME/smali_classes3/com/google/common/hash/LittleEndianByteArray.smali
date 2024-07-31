.class final Lcom/google/common/hash/LittleEndianByteArray;
.super Ljava/lang/Object;
.source "LittleEndianByteArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;,
        Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;,
        Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final byteArray:Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    nop

    .line 232
    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->INSTANCE:Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    .line 245
    .local v0, "theGetter":Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;
    :try_start_0
    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "arch":Ljava/lang/String;
    const-string v2, "amd64"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->UNSAFE_LITTLE_ENDIAN:Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->UNSAFE_BIG_ENDIAN:Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v0, v2

    .line 254
    .end local v1    # "arch":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 252
    :catchall_0
    move-exception v1

    .line 255
    :goto_1
    sput-object v0, Lcom/google/common/hash/LittleEndianByteArray;->byteArray:Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;

    .line 256
    .end local v0    # "theGetter":Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static load32([BI)I
    .locals 2
    .param p0, "source"    # [B
    .param p1, "offset"    # I

    .line 94
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static load64([BI)J
    .locals 2
    .param p0, "input"    # [B
    .param p1, "offset"    # I

    .line 42
    nop

    .line 44
    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray;->byteArray:Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;

    invoke-interface {v0, p0, p1}, Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;->getLongLittleEndian([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static load64Safely([BII)J
    .locals 8
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 58
    const-wide/16 v0, 0x0

    .line 63
    .local v0, "result":J
    const/16 v2, 0x8

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 64
    .local v2, "limit":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 66
    add-int v4, p1, v3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    mul-int/lit8 v6, v3, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v3    # "i":I
    :cond_0
    return-wide v0
.end method

.method static store64([BIJ)V
    .locals 1
    .param p0, "sink"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # J

    .line 80
    nop

    .line 82
    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray;->byteArray:Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;->putLongLittleEndian([BIJ)V

    .line 83
    return-void
.end method

.method static usingUnsafe()Z
    .locals 1

    .line 106
    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray;->byteArray:Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;

    instance-of v0, v0, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    return v0
.end method
