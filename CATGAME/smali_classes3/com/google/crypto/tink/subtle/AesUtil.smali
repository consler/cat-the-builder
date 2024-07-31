.class Lcom/google/crypto/tink/subtle/AesUtil;
.super Ljava/lang/Object;
.source "AesUtil.java"


# static fields
.field public static final BLOCK_SIZE:I = 0x10


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cmacPad([B)[B
    .locals 3
    .param p0, "x"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "x"
        }
    .end annotation

    .line 72
    array-length v0, p0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 75
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 76
    .local v0, "result":[B
    array-length v1, p0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 77
    return-object v0

    .line 73
    .end local v0    # "result":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x must be smaller than a block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static dbl([B)[B
    .locals 5
    .param p0, "value"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 40
    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 50
    new-array v0, v1, [B

    .line 51
    .local v0, "res":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xf

    if-ge v2, v1, :cond_1

    .line 52
    aget-byte v4, p0, v2

    shl-int/lit8 v4, v4, 0x1

    and-int/lit16 v4, v4, 0xfe

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 53
    if-ge v2, v3, :cond_0

    .line 54
    aget-byte v3, v0, v2

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    shr-int/lit8 v4, v4, 0x7

    and-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 51
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    .end local v2    # "i":I
    :cond_1
    aget-byte v1, v0, v3

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    shr-int/lit8 v2, v2, 0x7

    and-int/lit16 v2, v2, 0x87

    int-to-byte v2, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 60
    return-object v0

    .line 41
    .end local v0    # "res":[B
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value must be a block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
