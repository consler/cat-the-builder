.class public final Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;
.super Ljava/lang/Object;
.source "RsaKemHybridEncrypt.java"

# interfaces
.implements Lcom/google/crypto/tink/HybridEncrypt;


# instance fields
.field private final aeadFactory:Lcom/google/crypto/tink/aead/subtle/AeadFactory;

.field private final hkdfHmacAlgo:Ljava/lang/String;

.field private final hkdfSalt:[B

.field private final recipientPublicKey:Ljava/security/interfaces/RSAPublicKey;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;Ljava/lang/String;[BLcom/google/crypto/tink/aead/subtle/AeadFactory;)V
    .locals 1
    .param p1, "recipientPublicKey"    # Ljava/security/interfaces/RSAPublicKey;
    .param p2, "hkdfHmacAlgo"    # Ljava/lang/String;
    .param p3, "hkdfSalt"    # [B
    .param p4, "aeadFactory"    # Lcom/google/crypto/tink/aead/subtle/AeadFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10,
            0x0
        }
        names = {
            "recipientPublicKey",
            "hkdfHmacAlgo",
            "hkdfSalt",
            "aeadFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/subtle/RsaKem;->validateRsaModulus(Ljava/math/BigInteger;)V

    .line 46
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->recipientPublicKey:Ljava/security/interfaces/RSAPublicKey;

    .line 47
    iput-object p2, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->hkdfHmacAlgo:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->hkdfSalt:[B

    .line 49
    iput-object p4, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->aeadFactory:Lcom/google/crypto/tink/aead/subtle/AeadFactory;

    .line 50
    return-void
.end method


# virtual methods
.method public encrypt([B[B)[B
    .locals 9
    .param p1, "plaintext"    # [B
    .param p2, "contextInfo"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "plaintext",
            "contextInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->recipientPublicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    .line 57
    .local v0, "mod":Ljava/math/BigInteger;
    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/subtle/RsaKem;->generateSecret(Ljava/math/BigInteger;)[B

    move-result-object v1

    .line 60
    .local v1, "sharedSecret":[B
    const-string v2, "RSA/ECB/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 61
    .local v2, "rsaCipher":Ljavax/crypto/Cipher;
    iget-object v3, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->recipientPublicKey:Ljava/security/interfaces/RSAPublicKey;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 62
    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 65
    .local v3, "token":[B
    iget-object v4, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->hkdfHmacAlgo:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->hkdfSalt:[B

    iget-object v6, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->aeadFactory:Lcom/google/crypto/tink/aead/subtle/AeadFactory;

    .line 67
    invoke-interface {v6}, Lcom/google/crypto/tink/aead/subtle/AeadFactory;->getKeySizeInBytes()I

    move-result v6

    .line 66
    invoke-static {v4, v1, v5, p2, v6}, Lcom/google/crypto/tink/subtle/Hkdf;->computeHkdf(Ljava/lang/String;[B[B[BI)[B

    move-result-object v4

    .line 69
    .local v4, "demKey":[B
    iget-object v5, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->aeadFactory:Lcom/google/crypto/tink/aead/subtle/AeadFactory;

    invoke-interface {v5, v4}, Lcom/google/crypto/tink/aead/subtle/AeadFactory;->createAead([B)Lcom/google/crypto/tink/Aead;

    move-result-object v5

    .line 70
    .local v5, "aead":Lcom/google/crypto/tink/Aead;
    sget-object v6, Lcom/google/crypto/tink/hybrid/subtle/RsaKem;->EMPTY_AAD:[B

    invoke-interface {v5, p1, v6}, Lcom/google/crypto/tink/Aead;->encrypt([B[B)[B

    move-result-object v6

    .line 71
    .local v6, "ciphertext":[B
    array-length v7, v3

    array-length v8, v6

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    return-object v7
.end method
