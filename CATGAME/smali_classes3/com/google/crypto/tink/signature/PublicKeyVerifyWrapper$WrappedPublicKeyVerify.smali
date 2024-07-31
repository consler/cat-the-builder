.class Lcom/google/crypto/tink/signature/PublicKeyVerifyWrapper$WrappedPublicKeyVerify;
.super Ljava/lang/Object;
.source "PublicKeyVerifyWrapper.java"

# interfaces
.implements Lcom/google/crypto/tink/PublicKeyVerify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/PublicKeyVerifyWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedPublicKeyVerify"
.end annotation


# instance fields
.field private final primitives:Lcom/google/crypto/tink/PrimitiveSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/PrimitiveSet<",
            "Lcom/google/crypto/tink/PublicKeyVerify;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/PrimitiveSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primitives"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/PrimitiveSet<",
            "Lcom/google/crypto/tink/PublicKeyVerify;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p1, "primitives":Lcom/google/crypto/tink/PrimitiveSet;, "Lcom/google/crypto/tink/PrimitiveSet<Lcom/google/crypto/tink/PublicKeyVerify;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/crypto/tink/signature/PublicKeyVerifyWrapper$WrappedPublicKeyVerify;->primitives:Lcom/google/crypto/tink/PrimitiveSet;

    .line 49
    return-void
.end method


# virtual methods
.method public verify([B[B)V
    .locals 10
    .param p1, "signature"    # [B
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "signature",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 53
    array-length v0, p1

    const/4 v1, 0x5

    if-le v0, v1, :cond_3

    .line 58
    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 59
    .local v2, "prefix":[B
    array-length v3, p1

    .line 60
    invoke-static {p1, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 61
    .local v1, "sigNoPrefix":[B
    iget-object v3, p0, Lcom/google/crypto/tink/signature/PublicKeyVerifyWrapper$WrappedPublicKeyVerify;->primitives:Lcom/google/crypto/tink/PrimitiveSet;

    invoke-virtual {v3, v2}, Lcom/google/crypto/tink/PrimitiveSet;->getPrimitive([B)Ljava/util/List;

    move-result-object v3

    .line 62
    .local v3, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/PublicKeyVerify;>;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/crypto/tink/PrimitiveSet$Entry;

    .line 64
    .local v5, "entry":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/PublicKeyVerify;>;"
    :try_start_0
    invoke-virtual {v5}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v6

    sget-object v7, Lcom/google/crypto/tink/proto/OutputPrefixType;->LEGACY:Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-virtual {v6, v7}, Lcom/google/crypto/tink/proto/OutputPrefixType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 65
    const/4 v6, 0x1

    new-array v7, v6, [B

    aput-byte v0, v7, v0

    .line 66
    .local v7, "formatVersion":[B
    const/4 v8, 0x2

    new-array v8, v8, [[B

    aput-object p2, v8, v0

    aput-object v7, v8, v6

    invoke-static {v8}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object v6

    .line 67
    .local v6, "dataWithFormatVersion":[B
    invoke-virtual {v5}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getPrimitive()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/crypto/tink/PublicKeyVerify;

    invoke-interface {v8, v1, v6}, Lcom/google/crypto/tink/PublicKeyVerify;->verify([B[B)V

    .line 68
    .end local v6    # "dataWithFormatVersion":[B
    .end local v7    # "formatVersion":[B
    goto :goto_1

    .line 69
    :cond_0
    invoke-virtual {v5}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getPrimitive()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/crypto/tink/PublicKeyVerify;

    invoke-interface {v6, v1, p2}, Lcom/google/crypto/tink/PublicKeyVerify;->verify([B[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_1
    return-void

    .line 73
    :catch_0
    move-exception v6

    .line 74
    .local v6, "e":Ljava/security/GeneralSecurityException;
    invoke-static {}, Lcom/google/crypto/tink/signature/PublicKeyVerifyWrapper;->access$000()Ljava/util/logging/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "signature prefix matches a key, but cannot verify: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 77
    .end local v5    # "entry":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/PublicKeyVerify;>;"
    .end local v6    # "e":Ljava/security/GeneralSecurityException;
    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/signature/PublicKeyVerifyWrapper$WrappedPublicKeyVerify;->primitives:Lcom/google/crypto/tink/PrimitiveSet;

    invoke-virtual {v0}, Lcom/google/crypto/tink/PrimitiveSet;->getRawPrimitives()Ljava/util/List;

    move-result-object v0

    .line 81
    .end local v3    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/PublicKeyVerify;>;>;"
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/PublicKeyVerify;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/PrimitiveSet$Entry;

    .line 83
    .local v4, "entry":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/PublicKeyVerify;>;"
    :try_start_1
    invoke-virtual {v4}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getPrimitive()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/crypto/tink/PublicKeyVerify;

    invoke-interface {v5, p1, p2}, Lcom/google/crypto/tink/PublicKeyVerify;->verify([B[B)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    return-void

    .line 86
    :catch_1
    move-exception v5

    .line 89
    .end local v4    # "entry":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/PublicKeyVerify;>;"
    goto :goto_2

    .line 91
    :cond_2
    new-instance v3, Ljava/security/GeneralSecurityException;

    const-string v4, "invalid signature"

    invoke-direct {v3, v4}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 56
    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/PublicKeyVerify;>;>;"
    .end local v1    # "sigNoPrefix":[B
    .end local v2    # "prefix":[B
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "signature too short"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
