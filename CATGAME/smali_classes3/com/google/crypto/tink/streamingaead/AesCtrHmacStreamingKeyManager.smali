.class public final Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager;
.super Lcom/google/crypto/tink/KeyTypeManager;
.source "AesCtrHmacStreamingKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/KeyTypeManager<",
        "Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final MIN_TAG_SIZE_IN_BYTES:I = 0xa

.field private static final NONCE_PREFIX_IN_BYTES:I = 0x7


# direct methods
.method constructor <init>()V
    .locals 4

    .line 43
    const-class v0, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/crypto/tink/KeyTypeManager$PrimitiveFactory;

    new-instance v2, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager$1;

    const-class v3, Lcom/google/crypto/tink/StreamingAead;

    invoke-direct {v2, v3}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager$1;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/crypto/tink/KeyTypeManager;-><init>(Ljava/lang/Class;[Lcom/google/crypto/tink/KeyTypeManager$PrimitiveFactory;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager;->validateParams(Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;)V

    return-void
.end method

.method public static final aes128CtrHmacSha2561MBTemplate()Lcom/google/crypto/tink/KeyTemplate;
    .locals 6

    .line 212
    sget-object v1, Lcom/google/crypto/tink/proto/HashType;->SHA256:Lcom/google/crypto/tink/proto/HashType;

    sget-object v3, Lcom/google/crypto/tink/proto/HashType;->SHA256:Lcom/google/crypto/tink/proto/HashType;

    const/16 v0, 0x10

    const/16 v2, 0x10

    const/16 v4, 0x20

    const/high16 v5, 0x100000

    invoke-static/range {v0 .. v5}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager;->createKeyTemplate(ILcom/google/crypto/tink/proto/HashType;ILcom/google/crypto/tink/proto/HashType;II)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method public static final aes128CtrHmacSha2564KBTemplate()Lcom/google/crypto/tink/KeyTemplate;
    .locals 6

    .line 196
    sget-object v1, Lcom/google/crypto/tink/proto/HashType;->SHA256:Lcom/google/crypto/tink/proto/HashType;

    sget-object v3, Lcom/google/crypto/tink/proto/HashType;->SHA256:Lcom/google/crypto/tink/proto/HashType;

    const/16 v0, 0x10

    const/16 v2, 0x10

    const/16 v4, 0x20

    const/16 v5, 0x1000

    invoke-static/range {v0 .. v5}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager;->createKeyTemplate(ILcom/google/crypto/tink/proto/HashType;ILcom/google/crypto/tink/proto/HashType;II)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method public static final aes256CtrHmacSha2561MBTemplate()Lcom/google/crypto/tink/KeyTemplate;
    .locals 6

    .line 244
    sget-object v1, Lcom/google/crypto/tink/proto/HashType;->SHA256:Lcom/google/crypto/tink/proto/HashType;

    sget-object v3, Lcom/google/crypto/tink/proto/HashType;->SHA256:Lcom/google/crypto/tink/proto/HashType;

    const/16 v0, 0x20

    const/16 v2, 0x20

    const/16 v4, 0x20

    const/high16 v5, 0x100000

    invoke-static/range {v0 .. v5}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager;->createKeyTemplate(ILcom/google/crypto/tink/proto/HashType;ILcom/google/crypto/tink/proto/HashType;II)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method public static final aes256CtrHmacSha2564KBTemplate()Lcom/google/crypto/tink/KeyTemplate;
    .locals 6

    .line 228
    sget-object v1, Lcom/google/crypto/tink/proto/HashType;->SHA256:Lcom/google/crypto/tink/proto/HashType;

    sget-object v3, Lcom/google/crypto/tink/proto/HashType;->SHA256:Lcom/google/crypto/tink/proto/HashType;

    const/16 v0, 0x20

    const/16 v2, 0x20

    const/16 v4, 0x20

    const/16 v5, 0x1000

    invoke-static/range {v0 .. v5}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager;->createKeyTemplate(ILcom/google/crypto/tink/proto/HashType;ILcom/google/crypto/tink/proto/HashType;II)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method private static createKeyTemplate(ILcom/google/crypto/tink/proto/HashType;ILcom/google/crypto/tink/proto/HashType;II)Lcom/google/crypto/tink/KeyTemplate;
    .locals 6
    .param p0, "mainKeySize"    # I
    .param p1, "hkdfHashType"    # Lcom/google/crypto/tink/proto/HashType;
    .param p2, "derivedKeySize"    # I
    .param p3, "macHashType"    # Lcom/google/crypto/tink/proto/HashType;
    .param p4, "tagSize"    # I
    .param p5, "ciphertextSegmentSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mainKeySize",
            "hkdfHashType",
            "derivedKeySize",
            "macHashType",
            "tagSize",
            "ciphertextSegmentSize"
        }
    .end annotation

    .line 259
    invoke-static {}, Lcom/google/crypto/tink/proto/HmacParams;->newBuilder()Lcom/google/crypto/tink/proto/HmacParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/crypto/tink/proto/HmacParams$Builder;->setHash(Lcom/google/crypto/tink/proto/HashType;)Lcom/google/crypto/tink/proto/HmacParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/crypto/tink/proto/HmacParams$Builder;->setTagSize(I)Lcom/google/crypto/tink/proto/HmacParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HmacParams$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HmacParams;

    .line 261
    .local v0, "hmacParams":Lcom/google/crypto/tink/proto/HmacParams;
    invoke-static {}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->newBuilder()Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams$Builder;

    move-result-object v1

    .line 262
    invoke-virtual {v1, p5}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams$Builder;->setCiphertextSegmentSize(I)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams$Builder;

    move-result-object v1

    .line 263
    invoke-virtual {v1, p2}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams$Builder;->setDerivedKeySize(I)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams$Builder;

    move-result-object v1

    .line 264
    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams$Builder;->setHkdfHashType(Lcom/google/crypto/tink/proto/HashType;)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams$Builder;

    move-result-object v1

    .line 265
    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams$Builder;->setHmacParams(Lcom/google/crypto/tink/proto/HmacParams;)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams$Builder;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    .line 268
    .local v1, "params":Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    invoke-static {}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat$Builder;->setParams(Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat$Builder;->setKeySize(I)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat;

    .line 269
    .local v2, "format":Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat;
    new-instance v3, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager;

    invoke-direct {v3}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager;-><init>()V

    .line 270
    invoke-virtual {v3}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v3

    .line 271
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat;->toByteArray()[B

    move-result-object v4

    sget-object v5, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->RAW:Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    .line 269
    invoke-static {v3, v4, v5}, Lcom/google/crypto/tink/KeyTemplate;->create(Ljava/lang/String;[BLcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v3

    return-object v3
.end method

.method public static register(Z)V
    .locals 1
    .param p0, "newKeyAllowed"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newKeyAllowed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 180
    new-instance v0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager;

    invoke-direct {v0}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager;-><init>()V

    invoke-static {v0, p0}, Lcom/google/crypto/tink/Registry;->registerKeyManager(Lcom/google/crypto/tink/KeyTypeManager;Z)V

    .line 181
    return-void
.end method

.method private static validateHmacParams(Lcom/google/crypto/tink/proto/HmacParams;)V
    .locals 3
    .param p0, "params"    # Lcom/google/crypto/tink/proto/HmacParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HmacParams;->getTagSize()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_6

    .line 158
    sget-object v0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager$3;->$SwitchMap$com$google$crypto$tink$proto$HashType:[I

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HmacParams;->getHash()Lcom/google/crypto/tink/proto/HashType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/HashType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "tag size too big"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HmacParams;->getTagSize()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "unknown hash type"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_2
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HmacParams;->getTagSize()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_3

    goto :goto_0

    .line 166
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_4
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HmacParams;->getTagSize()I

    move-result v0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_5

    .line 177
    :goto_0
    return-void

    .line 161
    :cond_5
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_6
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "tag size too small"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateParams(Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;)V
    .locals 3
    .param p0, "params"    # Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->getDerivedKeySize()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateAesKeySize(I)V

    .line 135
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->getHkdfHashType()Lcom/google/crypto/tink/proto/HashType;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/HashType;->UNKNOWN_HASH:Lcom/google/crypto/tink/proto/HashType;

    if-eq v0, v1, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->getHmacParams()Lcom/google/crypto/tink/proto/HmacParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HmacParams;->getHash()Lcom/google/crypto/tink/proto/HashType;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/HashType;->UNKNOWN_HASH:Lcom/google/crypto/tink/proto/HashType;

    if-eq v0, v1, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->getHmacParams()Lcom/google/crypto/tink/proto/HmacParams;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager;->validateHmacParams(Lcom/google/crypto/tink/proto/HmacParams;)V

    .line 143
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->getCiphertextSegmentSize()I

    move-result v0

    .line 144
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->getDerivedKeySize()I

    move-result v1

    .line 145
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->getHmacParams()Lcom/google/crypto/tink/proto/HmacParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/HmacParams;->getTagSize()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x7

    if-lt v0, v1, :cond_0

    .line 152
    return-void

    .line 148
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "ciphertext_segment_size must be at least (derived_key_size + tag_size + NONCE_PREFIX_IN_BYTES + 2)"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "unknown HMAC hash type"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "unknown HKDF hash type"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getKeyType()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacStreamingKey"

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public keyFactory()Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/KeyTypeManager$KeyFactory<",
            "Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat;",
            "Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager$2;

    const-class v1, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat;

    invoke-direct {v0, p0, v1}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager$2;-><init>(Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager;Ljava/lang/Class;)V

    return-object v0
.end method

.method public keyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;
    .locals 1

    .line 78
    sget-object v0, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->SYMMETRIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    return-object v0
.end method

.method public parseKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey;
    .locals 1
    .param p1, "byteString"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteString"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 97
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "byteString"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager;->parseKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey;

    move-result-object p1

    return-object p1
.end method

.method public validateKey(Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey;)V
    .locals 2
    .param p1, "key"    # Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey;->getVersion()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager;->getVersion()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/Validators;->validateVersion(II)V

    .line 84
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey;->getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 87
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey;->getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey;->getParams()Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;->getDerivedKeySize()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey;->getParams()Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager;->validateParams(Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;)V

    .line 92
    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "key_value must have at least as many bits as derived keys"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "key_value must have at least 16 bytes"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic validateKey(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 41
    check-cast p1, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager;->validateKey(Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey;)V

    return-void
.end method
