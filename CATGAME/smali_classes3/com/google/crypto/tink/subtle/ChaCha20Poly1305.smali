.class public final Lcom/google/crypto/tink/subtle/ChaCha20Poly1305;
.super Lcom/google/crypto/tink/subtle/ChaCha20Poly1305Base;
.source "ChaCha20Poly1305.java"


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305Base;-><init>([B)V

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic decrypt([B[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "ciphertext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 28
    invoke-super {p0, p1, p2}, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305Base;->decrypt([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic encrypt([B[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "plaintext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 28
    invoke-super {p0, p1, p2}, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305Base;->encrypt([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method newChaCha20Instance([BI)Lcom/google/crypto/tink/subtle/ChaCha20Base;
    .locals 1
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

    .line 36
    new-instance v0, Lcom/google/crypto/tink/subtle/ChaCha20;

    invoke-direct {v0, p1, p2}, Lcom/google/crypto/tink/subtle/ChaCha20;-><init>([BI)V

    return-object v0
.end method
