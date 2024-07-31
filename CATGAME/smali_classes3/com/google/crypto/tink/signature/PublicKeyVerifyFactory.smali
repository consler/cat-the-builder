.class public final Lcom/google/crypto/tink/signature/PublicKeyVerifyFactory;
.super Ljava/lang/Object;
.source "PublicKeyVerifyFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPrimitive(Lcom/google/crypto/tink/KeysetHandle;)Lcom/google/crypto/tink/PublicKeyVerify;
    .locals 1
    .param p0, "keysetHandle"    # Lcom/google/crypto/tink/KeysetHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keysetHandle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/crypto/tink/signature/PublicKeyVerifyFactory;->getPrimitive(Lcom/google/crypto/tink/KeysetHandle;Lcom/google/crypto/tink/KeyManager;)Lcom/google/crypto/tink/PublicKeyVerify;

    move-result-object v0

    return-object v0
.end method

.method public static getPrimitive(Lcom/google/crypto/tink/KeysetHandle;Lcom/google/crypto/tink/KeyManager;)Lcom/google/crypto/tink/PublicKeyVerify;
    .locals 2
    .param p0, "keysetHandle"    # Lcom/google/crypto/tink/KeysetHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "keysetHandle",
            "keyManager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/KeysetHandle;",
            "Lcom/google/crypto/tink/KeyManager<",
            "Lcom/google/crypto/tink/PublicKeyVerify;",
            ">;)",
            "Lcom/google/crypto/tink/PublicKeyVerify;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    .local p1, "keyManager":Lcom/google/crypto/tink/KeyManager;, "Lcom/google/crypto/tink/KeyManager<Lcom/google/crypto/tink/PublicKeyVerify;>;"
    new-instance v0, Lcom/google/crypto/tink/signature/PublicKeyVerifyWrapper;

    invoke-direct {v0}, Lcom/google/crypto/tink/signature/PublicKeyVerifyWrapper;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/Registry;->registerPrimitiveWrapper(Lcom/google/crypto/tink/PrimitiveWrapper;)V

    .line 67
    const-class v0, Lcom/google/crypto/tink/PublicKeyVerify;

    .line 68
    invoke-static {p0, p1, v0}, Lcom/google/crypto/tink/Registry;->getPrimitives(Lcom/google/crypto/tink/KeysetHandle;Lcom/google/crypto/tink/KeyManager;Ljava/lang/Class;)Lcom/google/crypto/tink/PrimitiveSet;

    move-result-object v0

    .line 69
    .local v0, "primitives":Lcom/google/crypto/tink/PrimitiveSet;, "Lcom/google/crypto/tink/PrimitiveSet<Lcom/google/crypto/tink/PublicKeyVerify;>;"
    invoke-static {v0}, Lcom/google/crypto/tink/Registry;->wrap(Lcom/google/crypto/tink/PrimitiveSet;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/PublicKeyVerify;

    return-object v1
.end method
