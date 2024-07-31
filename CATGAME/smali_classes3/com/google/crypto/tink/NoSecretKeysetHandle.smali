.class public final Lcom/google/crypto/tink/NoSecretKeysetHandle;
.super Ljava/lang/Object;
.source "NoSecretKeysetHandle.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final parseFrom([B)Lcom/google/crypto/tink/KeysetHandle;
    .locals 3
    .param p0, "serialized"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "serialized"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    :try_start_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/crypto/tink/proto/Keyset;->parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/Keyset;

    move-result-object v0

    .line 44
    .local v0, "keyset":Lcom/google/crypto/tink/proto/Keyset;
    invoke-static {v0}, Lcom/google/crypto/tink/NoSecretKeysetHandle;->validate(Lcom/google/crypto/tink/proto/Keyset;)V

    .line 45
    invoke-static {v0}, Lcom/google/crypto/tink/KeysetHandle;->fromKeyset(Lcom/google/crypto/tink/proto/Keyset;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 46
    .end local v0    # "keyset":Lcom/google/crypto/tink/proto/Keyset;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "invalid keyset"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final read(Lcom/google/crypto/tink/KeysetReader;)Lcom/google/crypto/tink/KeysetHandle;
    .locals 2
    .param p0, "reader"    # Lcom/google/crypto/tink/KeysetReader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-interface {p0}, Lcom/google/crypto/tink/KeysetReader;->read()Lcom/google/crypto/tink/proto/Keyset;

    move-result-object v0

    .line 58
    .local v0, "keyset":Lcom/google/crypto/tink/proto/Keyset;
    invoke-static {v0}, Lcom/google/crypto/tink/NoSecretKeysetHandle;->validate(Lcom/google/crypto/tink/proto/Keyset;)V

    .line 59
    invoke-static {v0}, Lcom/google/crypto/tink/KeysetHandle;->fromKeyset(Lcom/google/crypto/tink/proto/Keyset;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v1

    return-object v1
.end method

.method private static validate(Lcom/google/crypto/tink/proto/Keyset;)V
    .locals 4
    .param p0, "keyset"    # Lcom/google/crypto/tink/proto/Keyset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset;->getKeyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/Keyset$Key;

    .line 69
    .local v1, "key":Lcom/google/crypto/tink/proto/Keyset$Key;
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/KeyData;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->UNKNOWN_KEYMATERIAL:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    if-eq v2, v3, :cond_0

    .line 70
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/KeyData;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->SYMMETRIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    if-eq v2, v3, :cond_0

    .line 71
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/KeyData;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PRIVATE:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    if-eq v2, v3, :cond_0

    .line 74
    .end local v1    # "key":Lcom/google/crypto/tink/proto/Keyset$Key;
    goto :goto_0

    .line 72
    .restart local v1    # "key":Lcom/google/crypto/tink/proto/Keyset$Key;
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v2, "keyset contains secret key material"

    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    .end local v1    # "key":Lcom/google/crypto/tink/proto/Keyset$Key;
    :cond_1
    return-void
.end method
