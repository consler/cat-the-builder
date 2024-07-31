.class public final Lcom/google/crypto/tink/subtle/EcdsaVerifyJce;
.super Ljava/lang/Object;
.source "EcdsaVerifyJce.java"

# interfaces
.implements Lcom/google/crypto/tink/PublicKeyVerify;


# instance fields
.field private final encoding:Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;

.field private final publicKey:Ljava/security/interfaces/ECPublicKey;

.field private final signatureAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;Lcom/google/crypto/tink/subtle/Enums$HashType;Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;)V
    .locals 1
    .param p1, "pubKey"    # Ljava/security/interfaces/ECPublicKey;
    .param p2, "hash"    # Lcom/google/crypto/tink/subtle/Enums$HashType;
    .param p3, "encoding"    # Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "pubKey",
            "hash",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/google/crypto/tink/subtle/EllipticCurves;->checkPublicKey(Ljava/security/interfaces/ECPublicKey;)V

    .line 40
    invoke-static {p2}, Lcom/google/crypto/tink/subtle/SubtleUtil;->toEcdsaAlgo(Lcom/google/crypto/tink/subtle/Enums$HashType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/EcdsaVerifyJce;->signatureAlgorithm:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/EcdsaVerifyJce;->publicKey:Ljava/security/interfaces/ECPublicKey;

    .line 42
    iput-object p3, p0, Lcom/google/crypto/tink/subtle/EcdsaVerifyJce;->encoding:Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;

    .line 43
    return-void
.end method


# virtual methods
.method public verify([B[B)V
    .locals 5
    .param p1, "signature"    # [B
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "signature",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 47
    move-object v0, p1

    .line 48
    .local v0, "derSignature":[B
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/EcdsaVerifyJce;->encoding:Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;

    sget-object v2, Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;->IEEE_P1363:Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;

    const-string v3, "Invalid signature"

    if-ne v1, v2, :cond_1

    .line 49
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/EcdsaVerifyJce;->publicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 50
    .local v1, "curve":Ljava/security/spec/EllipticCurve;
    array-length v2, p1

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/EllipticCurves;->fieldSizeInBytes(Ljava/security/spec/EllipticCurve;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    if-ne v2, v4, :cond_0

    .line 53
    invoke-static {p1}, Lcom/google/crypto/tink/subtle/EllipticCurves;->ecdsaIeee2Der([B)[B

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_0
    new-instance v2, Ljava/security/GeneralSecurityException;

    invoke-direct {v2, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    .end local v1    # "curve":Ljava/security/spec/EllipticCurve;
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->isValidDerEncoding([B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    sget-object v1, Lcom/google/crypto/tink/subtle/EngineFactory;->SIGNATURE:Lcom/google/crypto/tink/subtle/EngineFactory;

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/EcdsaVerifyJce;->signatureAlgorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Signature;

    .line 59
    .local v1, "verifier":Ljava/security/Signature;
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/EcdsaVerifyJce;->publicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 60
    invoke-virtual {v1, p2}, Ljava/security/Signature;->update([B)V

    .line 61
    const/4 v2, 0x0

    .line 63
    .local v2, "verified":Z
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/security/Signature;->verify([B)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 66
    goto :goto_1

    .line 64
    :catch_0
    move-exception v4

    .line 65
    .local v4, "ex":Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    .line 67
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :goto_1
    if-eqz v2, :cond_2

    .line 70
    return-void

    .line 68
    :cond_2
    new-instance v4, Ljava/security/GeneralSecurityException;

    invoke-direct {v4, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 56
    .end local v1    # "verifier":Ljava/security/Signature;
    .end local v2    # "verified":Z
    :cond_3
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-direct {v1, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
