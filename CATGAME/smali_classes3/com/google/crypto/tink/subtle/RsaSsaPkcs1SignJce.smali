.class public final Lcom/google/crypto/tink/subtle/RsaSsaPkcs1SignJce;
.super Ljava/lang/Object;
.source "RsaSsaPkcs1SignJce.java"

# interfaces
.implements Lcom/google/crypto/tink/PublicKeySign;


# instance fields
.field private final privateKey:Ljava/security/interfaces/RSAPrivateCrtKey;

.field private final publicKey:Ljava/security/interfaces/RSAPublicKey;

.field private final signatureAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lcom/google/crypto/tink/subtle/Enums$HashType;)V
    .locals 4
    .param p1, "priv"    # Ljava/security/interfaces/RSAPrivateCrtKey;
    .param p2, "hash"    # Lcom/google/crypto/tink/subtle/Enums$HashType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "priv",
            "hash"
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
    invoke-static {p2}, Lcom/google/crypto/tink/subtle/Validators;->validateSignatureHash(Lcom/google/crypto/tink/subtle/Enums$HashType;)V

    .line 40
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateRsaModulusSize(I)V

    .line 41
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateRsaPublicExponent(Ljava/math/BigInteger;)V

    .line 42
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1SignJce;->privateKey:Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 43
    invoke-static {p2}, Lcom/google/crypto/tink/subtle/SubtleUtil;->toRsaSsaPkcs1Algo(Lcom/google/crypto/tink/subtle/Enums$HashType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1SignJce;->signatureAlgorithm:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->KEY_FACTORY:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "RSA"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    .line 45
    .local v0, "kf":Ljava/security/KeyFactory;
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    .line 47
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    iput-object v1, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1SignJce;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    .line 48
    return-void
.end method


# virtual methods
.method public sign([B)[B
    .locals 5
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
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

    .line 52
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->SIGNATURE:Lcom/google/crypto/tink/subtle/EngineFactory;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1SignJce;->signatureAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Signature;

    .line 53
    .local v0, "signer":Ljava/security/Signature;
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1SignJce;->privateKey:Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 54
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 55
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    .line 57
    .local v1, "signature":[B
    sget-object v2, Lcom/google/crypto/tink/subtle/EngineFactory;->SIGNATURE:Lcom/google/crypto/tink/subtle/EngineFactory;

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1SignJce;->signatureAlgorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Signature;

    .line 58
    .local v2, "verifier":Ljava/security/Signature;
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1SignJce;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v2, v3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 59
    invoke-virtual {v2, p1}, Ljava/security/Signature;->update([B)V

    .line 60
    invoke-virtual {v2, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    return-object v1

    .line 61
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Security bug: RSA signature computation error"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
