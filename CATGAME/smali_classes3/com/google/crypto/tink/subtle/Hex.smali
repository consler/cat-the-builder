.class public final Lcom/google/crypto/tink/subtle/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 7
    .param p0, "hex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hex"
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 44
    .local v0, "size":I
    new-array v1, v0, [B

    .line 45
    .local v1, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 46
    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 47
    .local v3, "hi":I
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 48
    .local v4, "lo":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    if-eq v4, v5, :cond_0

    .line 51
    mul-int/lit8 v5, v3, 0x10

    add-int/2addr v5, v4

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 45
    .end local v3    # "hi":I
    .end local v4    # "lo":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    .restart local v3    # "hi":I
    .restart local v4    # "lo":I
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "input is not hexadecimal"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 53
    .end local v2    # "i":I
    .end local v3    # "hi":I
    .end local v4    # "lo":I
    :cond_1
    return-object v1

    .line 41
    .end local v0    # "size":I
    .end local v1    # "result":[B
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected a string of even length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 27
    const-string v0, "0123456789abcdef"

    .line 28
    .local v0, "chars":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 29
    .local v1, "result":Ljava/lang/StringBuilder;
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, p0, v3

    .line 31
    .local v4, "b":B
    and-int/lit16 v5, v4, 0xff

    .line 32
    .local v5, "val":I
    div-int/lit8 v6, v5, 0x10

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    rem-int/lit8 v6, v5, 0x10

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .end local v4    # "b":B
    .end local v5    # "val":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
