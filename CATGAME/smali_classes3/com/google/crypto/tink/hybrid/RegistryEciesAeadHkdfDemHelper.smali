.class Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;
.super Ljava/lang/Object;
.source "RegistryEciesAeadHkdfDemHelper.java"

# interfaces
.implements Lcom/google/crypto/tink/subtle/EciesAeadHkdfDemHelper;


# instance fields
.field private aesCtrHmacAeadKey:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

.field private aesCtrKeySize:I

.field private aesGcmKey:Lcom/google/crypto/tink/proto/AesGcmKey;

.field private final demKeyTypeUrl:Ljava/lang/String;

.field private final symmetricKeySize:I


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/proto/KeyTemplate;)V
    .locals 3
    .param p1, "demTemplate"    # Lcom/google/crypto/tink/proto/KeyTemplate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "demTemplate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KeyTemplate;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->demKeyTypeUrl:Ljava/lang/String;

    .line 54
    sget-object v1, Lcom/google/crypto/tink/aead/AeadConfig;->AES_GCM_TYPE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    nop

    .line 58
    :try_start_0
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KeyTemplate;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesGcmKeyFormat;

    move-result-object v0

    .line 59
    .local v0, "gcmKeyFormat":Lcom/google/crypto/tink/proto/AesGcmKeyFormat;
    invoke-static {p1}, Lcom/google/crypto/tink/Registry;->newKey(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/AesGcmKey;

    iput-object v1, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->aesGcmKey:Lcom/google/crypto/tink/proto/AesGcmKey;

    .line 60
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;->getKeySize()I

    move-result v1

    iput v1, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->symmetricKeySize:I
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v0    # "gcmKeyFormat":Lcom/google/crypto/tink/proto/AesGcmKeyFormat;
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 65
    .end local v0    # "e":Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->demKeyTypeUrl:Ljava/lang/String;

    sget-object v1, Lcom/google/crypto/tink/aead/AeadConfig;->AES_CTR_HMAC_AEAD_TYPE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    nop

    .line 69
    :try_start_1
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KeyTemplate;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;

    move-result-object v0

    .line 70
    .local v0, "aesCtrHmacAeadKeyFormat":Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;
    invoke-static {p1}, Lcom/google/crypto/tink/Registry;->newKey(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    iput-object v1, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->aesCtrHmacAeadKey:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    .line 71
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;->getAesCtrKeyFormat()Lcom/google/crypto/tink/proto/AesCtrKeyFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/AesCtrKeyFormat;->getKeySize()I

    move-result v1

    iput v1, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->aesCtrKeySize:I

    .line 72
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;->getHmacKeyFormat()Lcom/google/crypto/tink/proto/HmacKeyFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/HmacKeyFormat;->getKeySize()I

    move-result v1

    .line 73
    .local v1, "hmacKeySize":I
    iget v2, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->aesCtrKeySize:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->symmetricKeySize:I
    :try_end_1
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    .end local v0    # "aesCtrHmacAeadKeyFormat":Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;
    .end local v1    # "hmacKeySize":I
    nop

    .line 81
    :goto_0
    return-void

    .line 74
    :catch_1
    move-exception v0

    .line 75
    .local v0, "e":Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 79
    .end local v0    # "e":Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported AEAD DEM key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->demKeyTypeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAead([B)Lcom/google/crypto/tink/Aead;
    .locals 7
    .param p1, "symmetricKeyValue"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "symmetricKeyValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 90
    array-length v0, p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->getSymmetricKeySizeInBytes()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 93
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->demKeyTypeUrl:Ljava/lang/String;

    sget-object v1, Lcom/google/crypto/tink/aead/AeadConfig;->AES_GCM_TYPE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/google/crypto/tink/proto/AesGcmKey;->newBuilder()Lcom/google/crypto/tink/proto/AesGcmKey$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->aesGcmKey:Lcom/google/crypto/tink/proto/AesGcmKey;

    .line 95
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/proto/AesGcmKey$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesGcmKey$Builder;

    iget v2, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->symmetricKeySize:I

    .line 96
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([BII)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/AesGcmKey$Builder;->setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesGcmKey$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesGcmKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesGcmKey;

    .line 98
    .local v0, "aeadKey":Lcom/google/crypto/tink/proto/AesGcmKey;
    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->demKeyTypeUrl:Ljava/lang/String;

    const-class v2, Lcom/google/crypto/tink/Aead;

    invoke-static {v1, v0, v2}, Lcom/google/crypto/tink/Registry;->getPrimitive(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/Aead;

    return-object v1

    .line 99
    .end local v0    # "aeadKey":Lcom/google/crypto/tink/proto/AesGcmKey;
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->demKeyTypeUrl:Ljava/lang/String;

    sget-object v2, Lcom/google/crypto/tink/aead/AeadConfig;->AES_CTR_HMAC_AEAD_TYPE_URL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget v0, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->aesCtrKeySize:I

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 101
    .local v0, "aesCtrKeyValue":[B
    iget v1, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->aesCtrKeySize:I

    iget v2, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->symmetricKeySize:I

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 103
    .local v1, "hmacKeyValue":[B
    invoke-static {}, Lcom/google/crypto/tink/proto/AesCtrKey;->newBuilder()Lcom/google/crypto/tink/proto/AesCtrKey$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->aesCtrHmacAeadKey:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    .line 104
    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->getAesCtrKey()Lcom/google/crypto/tink/proto/AesCtrKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/proto/AesCtrKey$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/AesCtrKey$Builder;

    .line 105
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/proto/AesCtrKey$Builder;->setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesCtrKey$Builder;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/AesCtrKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/AesCtrKey;

    .line 108
    .local v2, "aesCtrKey":Lcom/google/crypto/tink/proto/AesCtrKey;
    invoke-static {}, Lcom/google/crypto/tink/proto/HmacKey;->newBuilder()Lcom/google/crypto/tink/proto/HmacKey$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->aesCtrHmacAeadKey:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    .line 109
    invoke-virtual {v4}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->getHmacKey()Lcom/google/crypto/tink/proto/HmacKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/proto/HmacKey$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/proto/HmacKey$Builder;

    .line 110
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/proto/HmacKey$Builder;->setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/HmacKey$Builder;

    move-result-object v3

    .line 111
    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/HmacKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/proto/HmacKey;

    .line 113
    .local v3, "hmacKey":Lcom/google/crypto/tink/proto/HmacKey;
    invoke-static {}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->newBuilder()Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->aesCtrHmacAeadKey:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    .line 114
    invoke-virtual {v5}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;

    move-result-object v4

    .line 115
    invoke-virtual {v4, v2}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;->setAesCtrKey(Lcom/google/crypto/tink/proto/AesCtrKey;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;

    move-result-object v4

    .line 116
    invoke-virtual {v4, v3}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;->setHmacKey(Lcom/google/crypto/tink/proto/HmacKey;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;

    move-result-object v4

    .line 117
    invoke-virtual {v4}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    .line 118
    .local v4, "aeadKey":Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
    iget-object v5, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->demKeyTypeUrl:Ljava/lang/String;

    const-class v6, Lcom/google/crypto/tink/Aead;

    invoke-static {v5, v4, v6}, Lcom/google/crypto/tink/Registry;->getPrimitive(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/crypto/tink/Aead;

    return-object v5

    .line 120
    .end local v0    # "aesCtrKeyValue":[B
    .end local v1    # "hmacKeyValue":[B
    .end local v2    # "aesCtrKey":Lcom/google/crypto/tink/proto/AesCtrKey;
    .end local v3    # "hmacKey":Lcom/google/crypto/tink/proto/HmacKey;
    .end local v4    # "aeadKey":Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "unknown DEM key type"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Symmetric key has incorrect length"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSymmetricKeySizeInBytes()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->symmetricKeySize:I

    return v0
.end method
