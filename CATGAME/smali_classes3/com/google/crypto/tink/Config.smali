.class public final Lcom/google/crypto/tink/Config;
.super Ljava/lang/Object;
.source "Config.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTinkKeyTypeEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/crypto/tink/proto/KeyTypeEntry;
    .locals 3
    .param p0, "catalogueName"    # Ljava/lang/String;
    .param p1, "primitiveName"    # Ljava/lang/String;
    .param p2, "keyProtoName"    # Ljava/lang/String;
    .param p3, "keyManagerVersion"    # I
    .param p4, "newKeyAllowed"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "catalogueName",
            "primitiveName",
            "keyProtoName",
            "keyManagerVersion",
            "newKeyAllowed"
        }
    .end annotation

    .line 50
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTypeEntry;->newBuilder()Lcom/google/crypto/tink/proto/KeyTypeEntry$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/KeyTypeEntry$Builder;->setPrimitiveName(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTypeEntry$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type.googleapis.com/google.crypto.tink."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTypeEntry$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTypeEntry$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p3}, Lcom/google/crypto/tink/proto/KeyTypeEntry$Builder;->setKeyManagerVersion(I)Lcom/google/crypto/tink/proto/KeyTypeEntry$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p4}, Lcom/google/crypto/tink/proto/KeyTypeEntry$Builder;->setNewKeyAllowed(Z)Lcom/google/crypto/tink/proto/KeyTypeEntry$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/KeyTypeEntry$Builder;->setCatalogueName(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTypeEntry$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTypeEntry$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeyTypeEntry;

    .line 50
    return-object v0
.end method

.method public static register(Lcom/google/crypto/tink/proto/RegistryConfig;)V
    .locals 2
    .param p0, "config"    # Lcom/google/crypto/tink/proto/RegistryConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/RegistryConfig;->getEntryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/KeyTypeEntry;

    .line 70
    .local v1, "entry":Lcom/google/crypto/tink/proto/KeyTypeEntry;
    invoke-static {v1}, Lcom/google/crypto/tink/Config;->registerKeyType(Lcom/google/crypto/tink/proto/KeyTypeEntry;)V

    .line 71
    .end local v1    # "entry":Lcom/google/crypto/tink/proto/KeyTypeEntry;
    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method public static registerKeyType(Lcom/google/crypto/tink/proto/KeyTypeEntry;)V
    .locals 4
    .param p0, "entry"    # Lcom/google/crypto/tink/proto/KeyTypeEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 83
    invoke-static {p0}, Lcom/google/crypto/tink/Config;->validate(Lcom/google/crypto/tink/proto/KeyTypeEntry;)V

    .line 86
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTypeEntry;->getCatalogueName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinkAead"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTypeEntry;->getCatalogueName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinkMac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTypeEntry;->getCatalogueName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinkHybridDecrypt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTypeEntry;->getCatalogueName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinkHybridEncrypt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTypeEntry;->getCatalogueName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinkPublicKeySign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTypeEntry;->getCatalogueName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinkPublicKeyVerify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTypeEntry;->getCatalogueName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinkStreamingAead"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTypeEntry;->getCatalogueName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinkDeterministicAead"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTypeEntry;->getCatalogueName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/Registry;->getCatalogue(Ljava/lang/String;)Lcom/google/crypto/tink/Catalogue;

    move-result-object v0

    .line 97
    .local v0, "catalogue":Lcom/google/crypto/tink/Catalogue;, "Lcom/google/crypto/tink/Catalogue<*>;"
    invoke-interface {v0}, Lcom/google/crypto/tink/Catalogue;->getPrimitiveWrapper()Lcom/google/crypto/tink/PrimitiveWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/Registry;->registerPrimitiveWrapper(Lcom/google/crypto/tink/PrimitiveWrapper;)V

    .line 98
    nop

    .line 100
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTypeEntry;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTypeEntry;->getPrimitiveName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTypeEntry;->getKeyManagerVersion()I

    move-result v3

    .line 99
    invoke-interface {v0, v1, v2, v3}, Lcom/google/crypto/tink/Catalogue;->getKeyManager(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/crypto/tink/KeyManager;

    move-result-object v1

    .line 101
    .local v1, "keyManager":Lcom/google/crypto/tink/KeyManager;, "Lcom/google/crypto/tink/KeyManager<*>;"
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTypeEntry;->getNewKeyAllowed()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/crypto/tink/Registry;->registerKeyManager(Lcom/google/crypto/tink/KeyManager;Z)V

    .line 102
    return-void

    .line 94
    .end local v0    # "catalogue":Lcom/google/crypto/tink/Catalogue;, "Lcom/google/crypto/tink/Catalogue<*>;"
    .end local v1    # "keyManager":Lcom/google/crypto/tink/KeyManager;, "Lcom/google/crypto/tink/KeyManager<*>;"
    :cond_1
    :goto_0
    return-void
.end method

.method private static validate(Lcom/google/crypto/tink/proto/KeyTypeEntry;)V
    .locals 2
    .param p0, "entry"    # Lcom/google/crypto/tink/proto/KeyTypeEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTypeEntry;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTypeEntry;->getPrimitiveName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTypeEntry;->getCatalogueName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Missing catalogue_name."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Missing primitive_name."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Missing type_url."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
