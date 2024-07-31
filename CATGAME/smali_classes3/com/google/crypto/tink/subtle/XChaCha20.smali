.class Lcom/google/crypto/tink/subtle/XChaCha20;
.super Lcom/google/crypto/tink/subtle/ChaCha20Base;
.source "XChaCha20.java"


# direct methods
.method constructor <init>([BI)V
    .locals 0
    .param p1, "key"    # [B
    .param p2, "initialCounter"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "initialCounter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/subtle/ChaCha20Base;-><init>([BI)V

    .line 38
    return-void
.end method

.method static hChaCha20([I[I)[I
    .locals 6
    .param p0, "key"    # [I
    .param p1, "nonce"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "nonce"
        }
    .end annotation

    .line 65
    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 66
    .local v0, "state":[I
    invoke-static {v0, p0}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->setSigmaAndKey([I[I)V

    .line 67
    const/4 v1, 0x0

    aget v1, p1, v1

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 68
    const/4 v1, 0x1

    aget v1, p1, v1

    const/16 v3, 0xd

    aput v1, v0, v3

    .line 69
    const/4 v1, 0x2

    aget v1, p1, v1

    const/16 v4, 0xe

    aput v1, v0, v4

    .line 70
    const/4 v1, 0x3

    aget v1, p1, v1

    const/16 v5, 0xf

    aput v1, v0, v5

    .line 71
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->shuffleState([I)V

    .line 73
    aget v1, v0, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 74
    aget v1, v0, v3

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 75
    aget v1, v0, v4

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 76
    aget v1, v0, v5

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 77
    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method createInitialState([II)[I
    .locals 4
    .param p1, "nonce"    # [I
    .param p2, "counter"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "nonce",
            "counter"
        }
    .end annotation

    .line 42
    array-length v0, p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/XChaCha20;->nonceSizeInBytes()I

    move-result v1

    const/4 v2, 0x4

    div-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 49
    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 50
    .local v0, "state":[I
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/XChaCha20;->key:[I

    invoke-static {v1, p1}, Lcom/google/crypto/tink/subtle/XChaCha20;->hChaCha20([I[I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->setSigmaAndKey([I[I)V

    .line 51
    const/16 v1, 0xc

    aput p2, v0, v1

    .line 52
    const/16 v1, 0xd

    aput v3, v0, v1

    .line 53
    const/16 v1, 0xe

    aget v2, p1, v2

    aput v2, v0, v1

    .line 54
    const/16 v1, 0xf

    const/4 v2, 0x5

    aget v2, p1, v2

    aput v2, v0, v1

    .line 55
    return-object v0

    .line 43
    .end local v0    # "state":[I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x20

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 44
    const-string v2, "XChaCha20 uses 192-bit nonces, but got a %d-bit nonce"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method nonceSizeInBytes()I
    .locals 1

    .line 60
    const/16 v0, 0x18

    return v0
.end method
