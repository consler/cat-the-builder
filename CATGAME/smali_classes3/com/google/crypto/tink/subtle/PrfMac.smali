.class public Lcom/google/crypto/tink/subtle/PrfMac;
.super Ljava/lang/Object;
.source "PrfMac.java"

# interfaces
.implements Lcom/google/crypto/tink/Mac;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# static fields
.field static final MIN_TAG_SIZE_IN_BYTES:I = 0xa


# instance fields
.field private final tagSize:I

.field private final wrappedPrf:Lcom/google/crypto/tink/prf/Prf;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/prf/Prf;I)V
    .locals 2
    .param p1, "wrappedPrf"    # Lcom/google/crypto/tink/prf/Prf;
    .param p2, "tagSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "wrappedPrf",
            "tagSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/PrfMac;->wrappedPrf:Lcom/google/crypto/tink/prf/Prf;

    .line 36
    iput p2, p0, Lcom/google/crypto/tink/subtle/PrfMac;->tagSize:I

    .line 39
    const/16 v0, 0xa

    if-lt p2, v0, :cond_0

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-interface {p1, v0, p2}, Lcom/google/crypto/tink/prf/Prf;->compute([BI)[B

    .line 47
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "tag size too small, need at least 10 bytes"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public computeMac([B)[B
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/PrfMac;->wrappedPrf:Lcom/google/crypto/tink/prf/Prf;

    iget v1, p0, Lcom/google/crypto/tink/subtle/PrfMac;->tagSize:I

    invoke-interface {v0, p1, v1}, Lcom/google/crypto/tink/prf/Prf;->compute([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public verifyMac([B[B)V
    .locals 2
    .param p1, "mac"    # [B
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mac",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/subtle/PrfMac;->computeMac([B)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/crypto/tink/subtle/Bytes;->equal([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid MAC"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
