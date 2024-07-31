.class Lcom/google/crypto/tink/subtle/ChaCha20;
.super Lcom/google/crypto/tink/subtle/ChaCha20Base;
.source "ChaCha20.java"


# direct methods
.method constructor <init>([BI)V
    .locals 0
    .param p1, "key"    # [B
    .param p2, "initialCounter"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
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

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/subtle/ChaCha20Base;-><init>([BI)V

    .line 29
    return-void
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

    .line 33
    array-length v0, p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/ChaCha20;->nonceSizeInBytes()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 38
    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 42
    .local v0, "state":[I
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/ChaCha20;->key:[I

    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->setSigmaAndKey([I[I)V

    .line 45
    const/16 v1, 0xc

    aput p2, v0, v1

    .line 49
    const/16 v1, 0xd

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    return-object v0

    .line 34
    .end local v0    # "state":[I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x20

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "ChaCha20 uses 96-bit nonces, but got a %d-bit nonce"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method nonceSizeInBytes()I
    .locals 1

    .line 55
    const/16 v0, 0xc

    return v0
.end method
