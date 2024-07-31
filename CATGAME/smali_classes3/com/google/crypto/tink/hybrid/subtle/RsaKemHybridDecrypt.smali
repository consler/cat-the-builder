.class public final Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridDecrypt;
.super Ljava/lang/Object;
.source "RsaKemHybridDecrypt.java"

# interfaces
.implements Lcom/google/crypto/tink/HybridDecrypt;


# instance fields
.field private final aeadFactory:Lcom/google/crypto/tink/aead/subtle/AeadFactory;

.field private final hkdfHmacAlgo:Ljava/lang/String;

.field private final hkdfSalt:[B

.field private final recipientPrivateKey:Ljava/security/interfaces/RSAPrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/RSAPrivateKey;Ljava/lang/String;[BLcom/google/crypto/tink/aead/subtle/AeadFactory;)V
    .locals 1
    .param p1, "recipientPrivateKey"    # Ljava/security/interfaces/RSAPrivateKey;
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
            "recipientPrivateKey",
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

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/subtle/RsaKem;->validateRsaModulus(Ljava/math/BigInteger;)V

    .line 45
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridDecrypt;->recipientPrivateKey:Ljava/security/interfaces/RSAPrivateKey;

    .line 46
    iput-object p3, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridDecrypt;->hkdfSalt:[B

    .line 47
    iput-object p2, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridDecrypt;->hkdfHmacAlgo:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridDecrypt;->aeadFactory:Lcom/google/crypto/tink/aead/subtle/AeadFactory;

    .line 49
    return-void
.end method


# virtual methods
.method public decrypt([B[B)[B
    .locals 9
    .param p1, "ciphertext"    # [B
    .param p2, "contextInfo"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ciphertext",
            "contextInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridDecrypt;->recipientPrivateKey:Ljava/security/interfaces/RSAPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/subtle/RsaKem;->bigIntSizeInBytes(Ljava/math/BigInteger;)I

    move-result v0

    .line 55
    .local v0, "modSizeInBytes":I
    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v0, :cond_0

    .line 63
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 64
    .local v1, "cipherBuffer":Ljava/nio/ByteBuffer;
    new-array v3, v0, [B

    .line 65
    .local v3, "token":[B
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 66
    const-string v4, "RSA/ECB/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 67
    .local v4, "rsaCipher":Ljavax/crypto/Cipher;
    iget-object v5, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridDecrypt;->recipientPrivateKey:Ljava/security/interfaces/RSAPrivateKey;

    invoke-virtual {v4, v2, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 68
    invoke-virtual {v4, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 71
    .local v2, "sharedSecret":[B
    iget-object v5, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridDecrypt;->hkdfHmacAlgo:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridDecrypt;->hkdfSalt:[B

    iget-object v7, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridDecrypt;->aeadFactory:Lcom/google/crypto/tink/aead/subtle/AeadFactory;

    .line 73
    invoke-interface {v7}, Lcom/google/crypto/tink/aead/subtle/AeadFactory;->getKeySizeInBytes()I

    move-result v7

    .line 72
    invoke-static {v5, v2, v6, p2, v7}, Lcom/google/crypto/tink/subtle/Hkdf;->computeHkdf(Ljava/lang/String;[B[B[BI)[B

    move-result-object v5

    .line 76
    .local v5, "demKey":[B
    iget-object v6, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridDecrypt;->aeadFactory:Lcom/google/crypto/tink/aead/subtle/AeadFactory;

    invoke-interface {v6, v5}, Lcom/google/crypto/tink/aead/subtle/AeadFactory;->createAead([B)Lcom/google/crypto/tink/Aead;

    move-result-object v6

    .line 77
    .local v6, "aead":Lcom/google/crypto/tink/Aead;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    new-array v7, v7, [B

    .line 78
    .local v7, "demPayload":[B
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 79
    sget-object v8, Lcom/google/crypto/tink/hybrid/subtle/RsaKem;->EMPTY_AAD:[B

    invoke-interface {v6, v7, v8}, Lcom/google/crypto/tink/Aead;->decrypt([B[B)[B

    move-result-object v8

    return-object v8

    .line 56
    .end local v1    # "cipherBuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "sharedSecret":[B
    .end local v3    # "token":[B
    .end local v4    # "rsaCipher":Ljavax/crypto/Cipher;
    .end local v5    # "demKey":[B
    .end local v6    # "aead":Lcom/google/crypto/tink/Aead;
    .end local v7    # "demPayload":[B
    :cond_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 57
    const-string v3, "Ciphertext must be of at least size %d bytes, but got %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
