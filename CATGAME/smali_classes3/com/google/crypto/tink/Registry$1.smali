.class Lcom/google/crypto/tink/Registry$1;
.super Ljava/lang/Object;
.source "Registry.java"

# interfaces
.implements Lcom/google/crypto/tink/Registry$KeyManagerContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/Registry;->createContainerFor(Lcom/google/crypto/tink/KeyManager;)Lcom/google/crypto/tink/Registry$KeyManagerContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$localKeyManager:Lcom/google/crypto/tink/KeyManager;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/KeyManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$localKeyManager"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/google/crypto/tink/Registry$1;->val$localKeyManager:Lcom/google/crypto/tink/KeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImplementingClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/google/crypto/tink/Registry$1;->val$localKeyManager:Lcom/google/crypto/tink/KeyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getKeyManager(Ljava/lang/Class;)Lcom/google/crypto/tink/KeyManager;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primitiveClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TQ;>;)",
            "Lcom/google/crypto/tink/KeyManager<",
            "TQ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 140
    .local p1, "primitiveClass":Ljava/lang/Class;, "Ljava/lang/Class<TQ;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/Registry$1;->val$localKeyManager:Lcom/google/crypto/tink/KeyManager;

    invoke-interface {v0}, Lcom/google/crypto/tink/KeyManager;->getPrimitiveClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/google/crypto/tink/Registry$1;->val$localKeyManager:Lcom/google/crypto/tink/KeyManager;

    .line 146
    .local v0, "result":Lcom/google/crypto/tink/KeyManager;, "Lcom/google/crypto/tink/KeyManager<TQ;>;"
    return-object v0

    .line 141
    .end local v0    # "result":Lcom/google/crypto/tink/KeyManager;, "Lcom/google/crypto/tink/KeyManager<TQ;>;"
    :cond_0
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "This should never be called, as we always first check supportedPrimitives."

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUntypedKeyManager()Lcom/google/crypto/tink/KeyManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/KeyManager<",
            "*>;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/google/crypto/tink/Registry$1;->val$localKeyManager:Lcom/google/crypto/tink/KeyManager;

    return-object v0
.end method

.method public parseKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1
    .param p1, "serializedKey"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public publicKeyManagerClassOrNull()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public supportedPrimitives()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/google/crypto/tink/Registry$1;->val$localKeyManager:Lcom/google/crypto/tink/KeyManager;

    invoke-interface {v0}, Lcom/google/crypto/tink/KeyManager;->getPrimitiveClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
