.class public final Lcom/google/common/net/InetAddresses;
.super Ljava/lang/Object;
.source "InetAddresses.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/net/InetAddresses$TeredoInfo;
    }
.end annotation


# static fields
.field private static final ANY4:Ljava/net/Inet4Address;

.field private static final IPV4_PART_COUNT:I = 0x4

.field private static final IPV4_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final IPV6_PART_COUNT:I = 0x8

.field private static final IPV6_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final LOOPBACK4:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 105
    const/16 v0, 0x2e

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/base/Splitter;->limit(I)Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InetAddresses;->IPV4_SPLITTER:Lcom/google/common/base/Splitter;

    .line 106
    const/16 v0, 0x3a

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/common/base/Splitter;->limit(I)Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InetAddresses;->IPV6_SPLITTER:Lcom/google/common/base/Splitter;

    .line 107
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    .line 108
    const-string v0, "0.0.0.0"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/net/Inet4Address;
    .locals 1

    .line 102
    sget-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-object v0
.end method

.method private static bytesToInetAddress([B)Ljava/net/InetAddress;
    .locals 2
    .param p0, "addr"    # [B

    .line 330
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static coerceToInteger(Ljava/net/InetAddress;)I
    .locals 1
    .param p0, "ip"    # Ljava/net/InetAddress;

    .line 910
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataInput([B)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/io/ByteArrayDataInput;->readInt()I

    move-result v0

    return v0
.end method

.method private static compressLongestRunOfZeroes([I)V
    .locals 5
    .param p0, "hextets"    # [I

    .line 376
    const/4 v0, -0x1

    .line 377
    .local v0, "bestRunStart":I
    const/4 v1, -0x1

    .line 378
    .local v1, "bestRunLength":I
    const/4 v2, -0x1

    .line 379
    .local v2, "runStart":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, 0x1

    if-ge v3, v4, :cond_3

    .line 380
    array-length v4, p0

    if-ge v3, v4, :cond_0

    aget v4, p0, v3

    if-nez v4, :cond_0

    .line 381
    if-gez v2, :cond_2

    .line 382
    move v2, v3

    goto :goto_1

    .line 384
    :cond_0
    if-ltz v2, :cond_2

    .line 385
    sub-int v4, v3, v2

    .line 386
    .local v4, "runLength":I
    if-le v4, v1, :cond_1

    .line 387
    move v0, v2

    .line 388
    move v1, v4

    .line 390
    :cond_1
    const/4 v2, -0x1

    .line 379
    .end local v4    # "runLength":I
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 393
    .end local v3    # "i":I
    :cond_3
    const/4 v3, 0x2

    if-lt v1, v3, :cond_4

    .line 394
    add-int v3, v0, v1

    const/4 v4, -0x1

    invoke-static {p0, v0, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 396
    :cond_4
    return-void
.end method

.method private static convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "ipString"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 286
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 287
    .local v0, "lastColon":I
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "initialPart":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, "dottedQuad":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v4

    .line 290
    .local v4, "quad":[B
    if-nez v4, :cond_0

    .line 291
    const/4 v2, 0x0

    return-object v2

    .line 293
    :cond_0
    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v5, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "penultimate":Ljava/lang/String;
    const/4 v5, 0x2

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x3

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 295
    .local v5, "ultimate":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static decrement(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 5
    .param p0, "address"    # Ljava/net/InetAddress;

    .line 1029
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1030
    .local v0, "addr":[B
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1031
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    aget-byte v3, v0, v1

    if-nez v3, :cond_0

    .line 1032
    const/4 v3, -0x1

    aput-byte v3, v0, v1

    .line 1033
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1036
    :cond_0
    if-ltz v1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-string v4, "Decrementing %s would wrap."

    invoke-static {v3, v4, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 1038
    aget-byte v3, v0, v1

    sub-int/2addr v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 1039
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method

.method public static forString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 3
    .param p0, "ipString"    # Ljava/lang/String;

    .line 142
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 145
    .local v0, "addr":[B
    if-eqz v0, :cond_0

    .line 149
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 146
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "\'%s\' is not an IP string literal."

    invoke-static {v2, v1}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public static forUriString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 3
    .param p0, "hostAddr"    # Ljava/lang/String;

    .line 471
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 472
    .local v0, "addr":Ljava/net/InetAddress;
    if-eqz v0, :cond_0

    .line 476
    return-object v0

    .line 473
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "Not a valid URI IP literal: \'%s\'"

    invoke-static {v2, v1}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method private static forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4
    .param p0, "hostAddr"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 481
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "ipString":Ljava/lang/String;
    const/16 v1, 0x10

    .local v1, "expectBytes":I
    goto :goto_0

    .line 490
    .end local v0    # "ipString":Ljava/lang/String;
    .end local v1    # "expectBytes":I
    :cond_0
    move-object v0, p0

    .line 491
    .restart local v0    # "ipString":Ljava/lang/String;
    const/4 v1, 0x4

    .line 495
    .restart local v1    # "expectBytes":I
    :goto_0
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 496
    .local v2, "addr":[B
    if-eqz v2, :cond_2

    array-length v3, v2

    if-eq v3, v1, :cond_1

    goto :goto_1

    .line 500
    :cond_1
    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    return-object v3

    .line 497
    :cond_2
    :goto_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private static varargs formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 1085
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static fromBigInteger(Ljava/math/BigInteger;Z)Ljava/net/InetAddress;
    .locals 11
    .param p0, "address"    # Ljava/math/BigInteger;
    .param p1, "isIpv6"    # Z

    .line 970
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "BigInteger must be greater than or equal to 0"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 972
    if-eqz p1, :cond_1

    const/16 v0, 0x10

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    .line 974
    .local v0, "numBytes":I
    :goto_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 975
    .local v3, "addressBytes":[B
    new-array v4, v0, [B

    .line 977
    .local v4, "targetCopyArray":[B
    array-length v5, v3

    sub-int/2addr v5, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 978
    .local v5, "srcPos":I
    array-length v6, v3

    sub-int/2addr v6, v5

    .line 979
    .local v6, "copyLength":I
    sub-int v7, v0, v6

    .line 982
    .local v7, "destPos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v5, :cond_3

    .line 983
    aget-byte v9, v3, v8

    if-nez v9, :cond_2

    .line 982
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 984
    :cond_2
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 987
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    aput-object p0, v9, v1

    .line 984
    const-string v1, "BigInteger cannot be converted to InetAddress because it has more than %d bytes: %s"

    invoke-static {v1, v9}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 992
    .end local v8    # "i":I
    :cond_3
    invoke-static {v3, v5, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 995
    :try_start_0
    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 996
    :catch_0
    move-exception v1

    .line 997
    .local v1, "impossible":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static fromIPv4BigInteger(Ljava/math/BigInteger;)Ljava/net/Inet4Address;
    .locals 1
    .param p0, "address"    # Ljava/math/BigInteger;

    .line 945
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/net/InetAddresses;->fromBigInteger(Ljava/math/BigInteger;Z)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0
.end method

.method public static fromIPv6BigInteger(Ljava/math/BigInteger;)Ljava/net/Inet6Address;
    .locals 1
    .param p0, "address"    # Ljava/math/BigInteger;

    .line 956
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/common/net/InetAddresses;->fromBigInteger(Ljava/math/BigInteger;Z)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    return-object v0
.end method

.method public static fromInteger(I)Ljava/net/Inet4Address;
    .locals 1
    .param p0, "address"    # I

    .line 933
    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static fromLittleEndianByteArray([B)Ljava/net/InetAddress;
    .locals 3
    .param p0, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1012
    array-length v0, p0

    new-array v0, v0, [B

    .line 1013
    .local v0, "reversed":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1014
    array-length v2, p0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    .line 1013
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1016
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public static get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 3
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 587
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Address \'%s\' is not a 6to4 address."

    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 589
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;
    .locals 8
    .param p0, "ip"    # Ljava/net/InetAddress;

    .line 848
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 849
    move-object v0, p0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0

    .line 853
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 854
    .local v0, "bytes":[B
    const/4 v1, 0x1

    .line 855
    .local v1, "leadingBytesOfZero":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xf

    if-ge v2, v3, :cond_2

    .line 856
    aget-byte v4, v0, v2

    if-eqz v4, :cond_1

    .line 857
    const/4 v1, 0x0

    .line 858
    goto :goto_1

    .line 855
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 861
    .end local v2    # "i":I
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    aget-byte v2, v0, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 862
    sget-object v2, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    return-object v2

    .line 863
    :cond_3
    if-eqz v1, :cond_4

    aget-byte v2, v0, v3

    if-nez v2, :cond_4

    .line 864
    sget-object v2, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-object v2

    .line 867
    :cond_4
    move-object v2, p0

    check-cast v2, Ljava/net/Inet6Address;

    .line 868
    .local v2, "ip6":Ljava/net/Inet6Address;
    const-wide/16 v3, 0x0

    .line 869
    .local v3, "addressAsLong":J
    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 870
    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Inet4Address;->hashCode()I

    move-result v5

    int-to-long v3, v5

    goto :goto_2

    .line 873
    :cond_5
    invoke-virtual {v2}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static {v5, v6, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    .line 877
    :goto_2
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_32()Lcom/google/common/hash/HashFunction;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lcom/google/common/hash/HashFunction;->hashLong(J)Lcom/google/common/hash/HashCode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/hash/HashCode;->asInt()I

    move-result v5

    .line 880
    .local v5, "coercedHash":I
    const/high16 v6, -0x20000000

    or-int/2addr v5, v6

    .line 884
    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    .line 885
    const/4 v5, -0x2

    .line 888
    :cond_6
    invoke-static {v5}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v6

    return-object v6
.end method

.method public static getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 3
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 556
    nop

    .line 557
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    .line 556
    const-string v2, "Address \'%s\' is not IPv4-compatible."

    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 559
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 3
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 773
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0

    .line 777
    :cond_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 778
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0

    .line 781
    :cond_1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 782
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/net/InetAddresses$TeredoInfo;->getClient()Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0

    .line 785
    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "\'%s\' has no embedded IPv4 address."

    invoke-static {v1, v0}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private static getInet4Address([B)Ljava/net/Inet4Address;
    .locals 3
    .param p0, "bytes"    # [B

    .line 120
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    const-string v2, "Byte array has invalid length for an IPv4 address: %s != 4."

    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 126
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0
.end method

.method public static getIsatapIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 3
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 739
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isIsatapAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Address \'%s\' is not an ISATAP address."

    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 741
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;
    .locals 7
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 678
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Address \'%s\' is not a Teredo address."

    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 680
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 681
    .local v0, "bytes":[B
    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v1

    .line 683
    .local v1, "server":Ljava/net/Inet4Address;
    invoke-static {v0, v2}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 686
    .local v2, "flags":I
    const/16 v4, 0xa

    invoke-static {v0, v4}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v4

    not-int v4, v4

    and-int/2addr v3, v4

    .line 688
    .local v3, "port":I
    const/16 v4, 0xc

    const/16 v5, 0x10

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 689
    .local v4, "clientBytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_0

    .line 691
    aget-byte v6, v4, v5

    not-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 689
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 693
    .end local v5    # "i":I
    :cond_0
    invoke-static {v4}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v5

    .line 695
    .local v5, "client":Ljava/net/Inet4Address;
    new-instance v6, Lcom/google/common/net/InetAddresses$TeredoInfo;

    invoke-direct {v6, v1, v5, v3, v2}, Lcom/google/common/net/InetAddresses$TeredoInfo;-><init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;II)V

    return-object v6
.end method

.method public static hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z
    .locals 1
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 757
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static hextetsToIPv6String([I)Ljava/lang/String;
    .locals 5
    .param p0, "hextets"    # [I

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 412
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 413
    .local v1, "lastWasNumber":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 414
    aget v3, p0, v2

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 415
    .local v3, "thisIsNumber":Z
    :goto_1
    if-eqz v3, :cond_2

    .line 416
    if-eqz v1, :cond_1

    .line 417
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    :cond_1
    aget v4, p0, v2

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 421
    :cond_2
    if-eqz v2, :cond_3

    if-eqz v1, :cond_4

    .line 422
    :cond_3
    const-string v4, "::"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :cond_4
    :goto_2
    move v1, v3

    .line 413
    .end local v3    # "thisIsNumber":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static increment(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 6
    .param p0, "address"    # Ljava/net/InetAddress;

    .line 1052
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1053
    .local v0, "addr":[B
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1054
    .local v1, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_0

    aget-byte v4, v0, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 1055
    aput-byte v3, v0, v1

    .line 1056
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1059
    :cond_0
    if-ltz v1, :cond_1

    move v3, v2

    :cond_1
    const-string v4, "Incrementing %s would wrap."

    invoke-static {v3, v4, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 1061
    aget-byte v3, v0, v1

    add-int/2addr v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 1062
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method

.method private static ipStringToBytes(Ljava/lang/String;)[B
    .locals 8
    .param p0, "ipString"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "hasColon":Z
    const/4 v1, 0x0

    .line 169
    .local v1, "hasDot":Z
    const/4 v2, -0x1

    .line 170
    .local v2, "percentIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-ge v3, v4, :cond_5

    .line 171
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 172
    .local v4, "c":C
    const/16 v7, 0x2e

    if-ne v4, v7, :cond_0

    .line 173
    const/4 v1, 0x1

    goto :goto_1

    .line 174
    :cond_0
    const/16 v7, 0x3a

    if-ne v4, v7, :cond_2

    .line 175
    if-eqz v1, :cond_1

    .line 176
    return-object v6

    .line 178
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 179
    :cond_2
    const/16 v7, 0x25

    if-ne v4, v7, :cond_3

    .line 180
    move v2, v3

    .line 181
    goto :goto_2

    .line 182
    :cond_3
    const/16 v7, 0x10

    invoke-static {v4, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    if-ne v7, v5, :cond_4

    .line 183
    return-object v6

    .line 170
    .end local v4    # "c":C
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    .end local v3    # "i":I
    :cond_5
    :goto_2
    if-eqz v0, :cond_8

    .line 189
    if-eqz v1, :cond_6

    .line 190
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 191
    if-nez p0, :cond_6

    .line 192
    return-object v6

    .line 195
    :cond_6
    if-eq v2, v5, :cond_7

    .line 196
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 198
    :cond_7
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV6(Ljava/lang/String;)[B

    move-result-object v3

    return-object v3

    .line 199
    :cond_8
    if-eqz v1, :cond_9

    .line 200
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v3

    return-object v3

    .line 202
    :cond_9
    return-object v6
.end method

.method public static is6to4Address(Ljava/net/Inet6Address;)Z
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 575
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 576
    .local v0, "bytes":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    const/16 v4, 0x20

    if-ne v2, v4, :cond_0

    aget-byte v2, v0, v3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method public static isCompatIPv4Address(Ljava/net/Inet6Address;)Z
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 533
    invoke-virtual {p0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 534
    return v1

    .line 537
    :cond_0
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 538
    .local v0, "bytes":[B
    const/16 v2, 0xc

    aget-byte v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const/16 v2, 0xd

    aget-byte v2, v0, v2

    if-nez v2, :cond_2

    const/16 v2, 0xe

    aget-byte v2, v0, v2

    if-nez v2, :cond_2

    const/16 v2, 0xf

    aget-byte v4, v0, v2

    if-eqz v4, :cond_1

    aget-byte v2, v0, v2

    if-ne v2, v3, :cond_2

    .line 542
    :cond_1
    return v1

    .line 545
    :cond_2
    return v3
.end method

.method public static isInetAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ipString"    # Ljava/lang/String;

    .line 160
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIsatapAddress(Ljava/net/Inet6Address;)Z
    .locals 4
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 715
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 716
    return v1

    .line 719
    :cond_0
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 721
    .local v0, "bytes":[B
    const/16 v2, 0x8

    aget-byte v2, v0, v2

    const/4 v3, 0x3

    or-int/2addr v2, v3

    if-eq v2, v3, :cond_1

    .line 725
    return v1

    .line 728
    :cond_1
    const/16 v2, 0x9

    aget-byte v2, v0, v2

    if-nez v2, :cond_2

    const/16 v2, 0xa

    aget-byte v2, v0, v2

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_2

    const/16 v2, 0xb

    aget-byte v2, v0, v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isMappedIPv4Address(Ljava/lang/String;)Z
    .locals 5
    .param p0, "ipString"    # Ljava/lang/String;

    .line 807
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 808
    .local v0, "bytes":[B
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 809
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 810
    aget-byte v3, v0, v2

    if-eqz v3, :cond_0

    .line 811
    return v1

    .line 809
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 814
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0xa

    .restart local v2    # "i":I
    :goto_1
    const/16 v3, 0xc

    if-ge v2, v3, :cond_3

    .line 815
    aget-byte v3, v0, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 816
    return v1

    .line 814
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 819
    .end local v2    # "i":I
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 821
    :cond_4
    return v1
.end method

.method public static isMaximum(Ljava/net/InetAddress;)Z
    .locals 4
    .param p0, "address"    # Ljava/net/InetAddress;

    .line 1074
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1075
    .local v0, "addr":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1076
    aget-byte v2, v0, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1077
    const/4 v2, 0x0

    return v2

    .line 1075
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1080
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static isTeredoAddress(Ljava/net/Inet6Address;)Z
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 663
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 664
    .local v0, "bytes":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    const/16 v4, 0x20

    if-ne v2, v4, :cond_0

    aget-byte v2, v0, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    if-nez v2, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method public static isUriInetAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ipString"    # Ljava/lang/String;

    .line 511
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static parseHextet(Ljava/lang/String;)S
    .locals 2
    .param p0, "ipPart"    # Ljava/lang/String;

    .line 311
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 312
    .local v0, "hextet":I
    const v1, 0xffff

    if-gt v0, v1, :cond_0

    .line 315
    int-to-short v1, v0

    return v1

    .line 313
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1
.end method

.method private static parseOctet(Ljava/lang/String;)B
    .locals 3
    .param p0, "ipPart"    # Ljava/lang/String;

    .line 300
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 303
    .local v0, "octet":I
    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 306
    :cond_0
    int-to-byte v1, v0

    return v1

    .line 304
    :cond_1
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1
.end method

.method private static textToNumericFormatV4(Ljava/lang/String;)[B
    .locals 8
    .param p0, "ipString"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 207
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 208
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .line 210
    .local v2, "i":I
    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/google/common/net/InetAddresses;->IPV4_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v4, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 211
    .local v5, "octet":Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    :try_start_1
    invoke-static {v5}, Lcom/google/common/net/InetAddresses;->parseOctet(Ljava/lang/String;)B

    move-result v7

    aput-byte v7, v1, v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 212
    .end local v5    # "octet":Ljava/lang/String;
    move v2, v6

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    move v2, v6

    goto :goto_1

    .line 215
    .end local v6    # "i":I
    .restart local v2    # "i":I
    :cond_0
    nop

    .line 217
    if-ne v2, v0, :cond_1

    move-object v3, v1

    :cond_1
    return-object v3

    .line 213
    :catch_1
    move-exception v0

    .line 214
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :goto_1
    return-object v3
.end method

.method private static textToNumericFormatV6(Ljava/lang/String;)[B
    .locals 10
    .param p0, "ipString"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 223
    sget-object v0, Lcom/google/common/net/InetAddresses;->IPV6_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v0, p0}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 224
    .local v0, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-lt v1, v3, :cond_d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x9

    if-le v1, v3, :cond_0

    goto/16 :goto_6

    .line 230
    :cond_0
    const/4 v1, -0x1

    .line 231
    .local v1, "skipIndex":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_3

    .line 232
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 233
    if-ltz v1, :cond_1

    .line 234
    return-object v2

    .line 236
    :cond_1
    move v1, v3

    .line 231
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 242
    .end local v3    # "i":I
    :cond_3
    const/4 v3, 0x0

    if-ltz v1, :cond_5

    .line 244
    move v4, v1

    .line 245
    .local v4, "partsHi":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int/2addr v6, v5

    .line 246
    .local v6, "partsLo":I
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    add-int/lit8 v4, v4, -0x1

    if-eqz v4, :cond_4

    .line 247
    return-object v2

    .line 249
    :cond_4
    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_6

    add-int/lit8 v6, v6, -0x1

    if-eqz v6, :cond_6

    .line 250
    return-object v2

    .line 255
    .end local v4    # "partsHi":I
    .end local v6    # "partsLo":I
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 256
    .restart local v4    # "partsHi":I
    const/4 v6, 0x0

    .line 261
    .restart local v6    # "partsLo":I
    :cond_6
    add-int v7, v4, v6

    rsub-int/lit8 v7, v7, 0x8

    .line 262
    .local v7, "partsSkipped":I
    if-ltz v1, :cond_7

    if-lt v7, v5, :cond_8

    goto :goto_1

    :cond_7
    if-eqz v7, :cond_9

    .line 263
    :cond_8
    return-object v2

    .line 267
    :cond_9
    :goto_1
    const/16 v5, 0x10

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 269
    .local v5, "rawBytes":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v4, :cond_a

    .line 270
    :try_start_0
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;)S

    move-result v9

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 269
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 278
    .end local v8    # "i":I
    :catch_0
    move-exception v3

    goto :goto_5

    .line 272
    :cond_a
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v7, :cond_b

    .line 273
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 272
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 275
    .end local v8    # "i":I
    :cond_b
    move v3, v6

    .restart local v3    # "i":I
    :goto_4
    if-lez v3, :cond_c

    .line 276
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;)S

    move-result v8

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 279
    .local v3, "ex":Ljava/lang/NumberFormatException;
    :goto_5
    return-object v2

    .line 280
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    :cond_c
    nop

    .line 281
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2

    .line 225
    .end local v1    # "skipIndex":I
    .end local v4    # "partsHi":I
    .end local v5    # "rawBytes":Ljava/nio/ByteBuffer;
    .end local v6    # "partsLo":I
    .end local v7    # "partsSkipped":I
    :cond_d
    :goto_6
    return-object v2
.end method

.method public static toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 6
    .param p0, "ip"    # Ljava/net/InetAddress;

    .line 352
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 357
    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 358
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 359
    .local v0, "bytes":[B
    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 360
    .local v1, "hextets":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 361
    mul-int/lit8 v3, v2, 0x2

    aget-byte v3, v0, v3

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, v0, v4

    const/4 v5, 0x0

    invoke-static {v5, v5, v3, v4}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v3

    aput v3, v1, v2

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    .end local v2    # "i":I
    :cond_1
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->compressLongestRunOfZeroes([I)V

    .line 364
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->hextetsToIPv6String([I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toBigInteger(Ljava/net/InetAddress;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "address"    # Ljava/net/InetAddress;

    .line 923
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static toUriString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 2
    .param p0, "ip"    # Ljava/net/InetAddress;

    .line 450
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 453
    :cond_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
