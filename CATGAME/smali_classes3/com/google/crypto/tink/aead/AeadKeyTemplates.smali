.class public final Lcom/google/crypto/tink/aead/AeadKeyTemplates;
.super Ljava/lang/Object;
.source "AeadKeyTemplates.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final AES128_CTR_HMAC_SHA256:Lcom/google/crypto/tink/proto/KeyTemplate;

.field public static final AES128_EAX:Lcom/google/crypto/tink/proto/KeyTemplate;

.field public static final AES128_GCM:Lcom/google/crypto/tink/proto/KeyTemplate;

.field public static final AES256_CTR_HMAC_SHA256:Lcom/google/crypto/tink/proto/KeyTemplate;

.field public static final AES256_EAX:Lcom/google/crypto/tink/proto/KeyTemplate;

.field public static final AES256_GCM:Lcom/google/crypto/tink/proto/KeyTemplate;

.field public static final CHACHA20_POLY1305:Lcom/google/crypto/tink/proto/KeyTemplate;

.field public static final XCHACHA20_POLY1305:Lcom/google/crypto/tink/proto/KeyTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->createAesGcmKeyTemplate(I)Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->AES128_GCM:Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 78
    const/16 v1, 0x20

    invoke-static {v1}, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->createAesGcmKeyTemplate(I)Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->AES256_GCM:Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 89
    invoke-static {v0, v0}, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->createAesEaxKeyTemplate(II)Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->AES128_EAX:Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 100
    invoke-static {v1, v0}, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->createAesEaxKeyTemplate(II)Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->AES256_EAX:Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 114
    sget-object v2, Lcom/google/crypto/tink/proto/HashType;->SHA256:Lcom/google/crypto/tink/proto/HashType;

    .line 115
    invoke-static {v0, v0, v1, v0, v2}, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->createAesCtrHmacAeadKeyTemplate(IIIILcom/google/crypto/tink/proto/HashType;)Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->AES128_CTR_HMAC_SHA256:Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 129
    sget-object v2, Lcom/google/crypto/tink/proto/HashType;->SHA256:Lcom/google/crypto/tink/proto/HashType;

    .line 130
    invoke-static {v1, v0, v1, v1, v2}, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->createAesCtrHmacAeadKeyTemplate(IIIILcom/google/crypto/tink/proto/HashType;)Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->AES256_CTR_HMAC_SHA256:Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 139
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/crypto/tink/aead/ChaCha20Poly1305KeyManager;

    invoke-direct {v1}, Lcom/google/crypto/tink/aead/ChaCha20Poly1305KeyManager;-><init>()V

    .line 140
    invoke-virtual {v1}, Lcom/google/crypto/tink/aead/ChaCha20Poly1305KeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 141
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeyTemplate;

    sput-object v0, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->CHACHA20_POLY1305:Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 151
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;

    invoke-direct {v1}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;-><init>()V

    .line 152
    invoke-virtual {v1}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 153
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeyTemplate;

    sput-object v0, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->XCHACHA20_POLY1305:Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 150
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAesCtrHmacAeadKeyTemplate(IIIILcom/google/crypto/tink/proto/HashType;)Lcom/google/crypto/tink/proto/KeyTemplate;
    .locals 5
    .param p0, "aesKeySize"    # I
    .param p1, "ivSize"    # I
    .param p2, "hmacKeySize"    # I
    .param p3, "tagSize"    # I
    .param p4, "hashType"    # Lcom/google/crypto/tink/proto/HashType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "aesKeySize",
            "ivSize",
            "hmacKeySize",
            "tagSize",
            "hashType"
        }
    .end annotation

    .line 193
    invoke-static {}, Lcom/google/crypto/tink/proto/AesCtrKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/AesCtrKeyFormat$Builder;

    move-result-object v0

    .line 194
    invoke-static {}, Lcom/google/crypto/tink/proto/AesCtrParams;->newBuilder()Lcom/google/crypto/tink/proto/AesCtrParams$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/proto/AesCtrParams$Builder;->setIvSize(I)Lcom/google/crypto/tink/proto/AesCtrParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/AesCtrParams$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/AesCtrParams;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/AesCtrKeyFormat$Builder;->setParams(Lcom/google/crypto/tink/proto/AesCtrParams;)Lcom/google/crypto/tink/proto/AesCtrKeyFormat$Builder;

    move-result-object v0

    .line 195
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/AesCtrKeyFormat$Builder;->setKeySize(I)Lcom/google/crypto/tink/proto/AesCtrKeyFormat$Builder;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCtrKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrKeyFormat;

    .line 197
    .local v0, "aesCtrKeyFormat":Lcom/google/crypto/tink/proto/AesCtrKeyFormat;
    invoke-static {}, Lcom/google/crypto/tink/proto/HmacKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/HmacKeyFormat$Builder;

    move-result-object v1

    .line 199
    invoke-static {}, Lcom/google/crypto/tink/proto/HmacParams;->newBuilder()Lcom/google/crypto/tink/proto/HmacParams$Builder;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/google/crypto/tink/proto/HmacParams$Builder;->setHash(Lcom/google/crypto/tink/proto/HashType;)Lcom/google/crypto/tink/proto/HmacParams$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/crypto/tink/proto/HmacParams$Builder;->setTagSize(I)Lcom/google/crypto/tink/proto/HmacParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/HmacParams$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/HmacParams;

    .line 198
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/HmacKeyFormat$Builder;->setParams(Lcom/google/crypto/tink/proto/HmacParams;)Lcom/google/crypto/tink/proto/HmacKeyFormat$Builder;

    move-result-object v1

    .line 200
    invoke-virtual {v1, p2}, Lcom/google/crypto/tink/proto/HmacKeyFormat$Builder;->setKeySize(I)Lcom/google/crypto/tink/proto/HmacKeyFormat$Builder;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/HmacKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/HmacKeyFormat;

    .line 202
    .local v1, "hmacKeyFormat":Lcom/google/crypto/tink/proto/HmacKeyFormat;
    invoke-static {}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat$Builder;

    move-result-object v2

    .line 203
    invoke-virtual {v2, v0}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat$Builder;->setAesCtrKeyFormat(Lcom/google/crypto/tink/proto/AesCtrKeyFormat;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat$Builder;

    move-result-object v2

    .line 204
    invoke-virtual {v2, v1}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat$Builder;->setHmacKeyFormat(Lcom/google/crypto/tink/proto/HmacKeyFormat;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat$Builder;

    move-result-object v2

    .line 205
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;

    .line 206
    .local v2, "format":Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v3

    .line 207
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v3

    new-instance v4, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;

    invoke-direct {v4}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;-><init>()V

    .line 208
    invoke-virtual {v4}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 209
    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v3

    .line 210
    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 206
    return-object v3
.end method

.method public static createAesEaxKeyTemplate(II)Lcom/google/crypto/tink/proto/KeyTemplate;
    .locals 3
    .param p0, "keySize"    # I
    .param p1, "ivSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keySize",
            "ivSize"
        }
    .end annotation

    .line 176
    invoke-static {}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;

    move-result-object v0

    .line 177
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;->setKeySize(I)Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;

    move-result-object v0

    .line 178
    invoke-static {}, Lcom/google/crypto/tink/proto/AesEaxParams;->newBuilder()Lcom/google/crypto/tink/proto/AesEaxParams$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/proto/AesEaxParams$Builder;->setIvSize(I)Lcom/google/crypto/tink/proto/AesEaxParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/AesEaxParams$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/AesEaxParams;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;->setParams(Lcom/google/crypto/tink/proto/AesEaxParams;)Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;

    .line 180
    .local v0, "format":Lcom/google/crypto/tink/proto/AesEaxKeyFormat;
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    .line 181
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/crypto/tink/aead/AesEaxKeyManager;

    invoke-direct {v2}, Lcom/google/crypto/tink/aead/AesEaxKeyManager;-><init>()V

    .line 182
    invoke-virtual {v2}, Lcom/google/crypto/tink/aead/AesEaxKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 183
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 180
    return-object v1
.end method

.method public static createAesGcmKeyTemplate(I)Lcom/google/crypto/tink/proto/KeyTemplate;
    .locals 3
    .param p0, "keySize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keySize"
        }
    .end annotation

    .line 161
    invoke-static {}, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/AesGcmKeyFormat$Builder;

    move-result-object v0

    .line 162
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/AesGcmKeyFormat$Builder;->setKeySize(I)Lcom/google/crypto/tink/proto/AesGcmKeyFormat$Builder;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesGcmKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;

    .line 164
    .local v0, "format":Lcom/google/crypto/tink/proto/AesGcmKeyFormat;
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    .line 165
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/crypto/tink/aead/AesGcmKeyManager;

    invoke-direct {v2}, Lcom/google/crypto/tink/aead/AesGcmKeyManager;-><init>()V

    .line 166
    invoke-virtual {v2}, Lcom/google/crypto/tink/aead/AesGcmKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 167
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 164
    return-object v1
.end method

.method public static createKmsAeadKeyTemplate(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate;
    .locals 3
    .param p0, "keyUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyUri"
        }
    .end annotation

    .line 218
    invoke-static {}, Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/KmsAeadKeyFormat$Builder;

    move-result-object v0

    .line 219
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/KmsAeadKeyFormat$Builder;->setKeyUri(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KmsAeadKeyFormat$Builder;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KmsAeadKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;

    .line 221
    .local v0, "format":Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    .line 222
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/crypto/tink/aead/KmsAeadKeyManager;

    invoke-direct {v2}, Lcom/google/crypto/tink/aead/KmsAeadKeyManager;-><init>()V

    .line 223
    invoke-virtual {v2}, Lcom/google/crypto/tink/aead/KmsAeadKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 224
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 221
    return-object v1
.end method

.method public static createKmsEnvelopeAeadKeyTemplate(Ljava/lang/String;Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/proto/KeyTemplate;
    .locals 3
    .param p0, "kekUri"    # Ljava/lang/String;
    .param p1, "dekTemplate"    # Lcom/google/crypto/tink/proto/KeyTemplate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "kekUri",
            "dekTemplate"
        }
    .end annotation

    .line 235
    invoke-static {}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat$Builder;

    move-result-object v0

    .line 236
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat$Builder;->setDekTemplate(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat$Builder;

    move-result-object v0

    .line 237
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat$Builder;->setKekUri(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat$Builder;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;

    .line 239
    .local v0, "format":Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    .line 240
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;

    invoke-direct {v2}, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;-><init>()V

    .line 241
    invoke-virtual {v2}, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 242
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 239
    return-object v1
.end method
