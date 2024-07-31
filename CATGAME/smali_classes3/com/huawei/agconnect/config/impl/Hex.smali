.class public Lcom/huawei/agconnect/config/impl/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# static fields
.field private static final hexCode:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/huawei/agconnect/config/impl/Hex;->hexCode:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeHex([C)[B
    .locals 8
    .param p0, "data"    # [C

    .line 49
    array-length v0, p0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    .line 53
    array-length v0, p0

    shr-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 55
    .local v0, "out":[B
    const/4 v1, 0x0

    .line 56
    .local v1, "i":I
    const/4 v2, 0x0

    .line 57
    .local v2, "j":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 58
    aget-char v3, p0, v2

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 59
    .local v3, "high":I
    const-string v5, "Illegal hexadecimal character at index "

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 63
    aget-char v7, p0, v2

    invoke-static {v7, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 64
    .local v4, "low":I
    if-eq v4, v6, :cond_0

    .line 67
    add-int/lit8 v2, v2, 0x1

    .line 68
    shl-int/lit8 v5, v3, 0x4

    or-int/2addr v5, v4

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 69
    nop

    .end local v3    # "high":I
    .end local v4    # "low":I
    add-int/lit8 v1, v1, 0x1

    .line 70
    goto :goto_0

    .line 65
    .restart local v3    # "high":I
    .restart local v4    # "low":I
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 60
    .end local v4    # "low":I
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 72
    .end local v3    # "high":I
    :cond_2
    return-object v0

    .line 50
    .end local v0    # "out":[B
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Odd number of characters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeHexString(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/agconnect/config/impl/Hex;->decodeHex([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 19
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 20
    .local v3, "b":B
    sget-object v4, Lcom/huawei/agconnect/config/impl/Hex;->hexCode:[C

    shr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    sget-object v4, Lcom/huawei/agconnect/config/impl/Hex;->hexCode:[C

    and-int/lit8 v5, v3, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
