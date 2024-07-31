.class Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;
.super Ljava/lang/Object;
.source "MacWrapper.java"

# interfaces
.implements Lcom/google/crypto/tink/Mac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/mac/MacWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedMac"
.end annotation


# instance fields
.field private final formatVersion:[B

.field private final primitives:Lcom/google/crypto/tink/PrimitiveSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/PrimitiveSet<",
            "Lcom/google/crypto/tink/Mac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/PrimitiveSet;)V
    .locals 2
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
            "Lcom/google/crypto/tink/Mac;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p1, "primitives":Lcom/google/crypto/tink/PrimitiveSet;, "Lcom/google/crypto/tink/PrimitiveSet<Lcom/google/crypto/tink/Mac;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    iput-object v0, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->formatVersion:[B

    .line 48
    iput-object p1, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->primitives:Lcom/google/crypto/tink/PrimitiveSet;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/PrimitiveSet;Lcom/google/crypto/tink/mac/MacWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/crypto/tink/PrimitiveSet;
    .param p2, "x1"    # Lcom/google/crypto/tink/mac/MacWrapper$1;

    .line 43
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;-><init>(Lcom/google/crypto/tink/PrimitiveSet;)V

    return-void
.end method


# virtual methods
.method public computeMac([B)[B
    .locals 5
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->primitives:Lcom/google/crypto/tink/PrimitiveSet;

    invoke-virtual {v0}, Lcom/google/crypto/tink/PrimitiveSet;->getPrimary()Lcom/google/crypto/tink/PrimitiveSet$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/OutputPrefixType;->LEGACY:Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/OutputPrefixType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 54
    new-array v0, v3, [[B

    iget-object v4, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->primitives:Lcom/google/crypto/tink/PrimitiveSet;

    .line 55
    invoke-virtual {v4}, Lcom/google/crypto/tink/PrimitiveSet;->getPrimary()Lcom/google/crypto/tink/PrimitiveSet$Entry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getIdentifier()[B

    move-result-object v4

    aput-object v4, v0, v2

    iget-object v4, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->primitives:Lcom/google/crypto/tink/PrimitiveSet;

    .line 56
    invoke-virtual {v4}, Lcom/google/crypto/tink/PrimitiveSet;->getPrimary()Lcom/google/crypto/tink/PrimitiveSet$Entry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getPrimitive()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/Mac;

    new-array v3, v3, [[B

    aput-object p1, v3, v2

    iget-object v2, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->formatVersion:[B

    aput-object v2, v3, v1

    invoke-static {v3}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/google/crypto/tink/Mac;->computeMac([B)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 54
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    new-array v0, v3, [[B

    iget-object v3, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->primitives:Lcom/google/crypto/tink/PrimitiveSet;

    .line 59
    invoke-virtual {v3}, Lcom/google/crypto/tink/PrimitiveSet;->getPrimary()Lcom/google/crypto/tink/PrimitiveSet$Entry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getIdentifier()[B

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->primitives:Lcom/google/crypto/tink/PrimitiveSet;

    .line 60
    invoke-virtual {v2}, Lcom/google/crypto/tink/PrimitiveSet;->getPrimary()Lcom/google/crypto/tink/PrimitiveSet$Entry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getPrimitive()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/Mac;

    invoke-interface {v2, p1}, Lcom/google/crypto/tink/Mac;->computeMac([B)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 58
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object v0

    return-object v0
.end method

.method public verifyMac([B[B)V
    .locals 9
    .param p1, "mac"    # [B
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "mac",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 65
    array-length v0, p1

    const/4 v1, 0x5

    if-le v0, v1, :cond_3

    .line 70
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 71
    .local v0, "prefix":[B
    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 72
    .local v1, "macNoPrefix":[B
    iget-object v2, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->primitives:Lcom/google/crypto/tink/PrimitiveSet;

    invoke-virtual {v2, v0}, Lcom/google/crypto/tink/PrimitiveSet;->getPrimitive([B)Ljava/util/List;

    move-result-object v2

    .line 73
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/Mac;>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/PrimitiveSet$Entry;

    .line 75
    .local v4, "entry":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/Mac;>;"
    :try_start_0
    invoke-virtual {v4}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v5

    sget-object v6, Lcom/google/crypto/tink/proto/OutputPrefixType;->LEGACY:Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-virtual {v5, v6}, Lcom/google/crypto/tink/proto/OutputPrefixType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 76
    invoke-virtual {v4}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getPrimitive()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/crypto/tink/Mac;

    const/4 v6, 0x2

    new-array v6, v6, [[B

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->formatVersion:[B

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object v6

    invoke-interface {v5, v1, v6}, Lcom/google/crypto/tink/Mac;->verifyMac([B[B)V

    goto :goto_1

    .line 78
    :cond_0
    invoke-virtual {v4}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getPrimitive()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/crypto/tink/Mac;

    invoke-interface {v5, v1, p2}, Lcom/google/crypto/tink/Mac;->verifyMac([B[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_1
    return-void

    .line 82
    :catch_0
    move-exception v5

    .line 83
    .local v5, "e":Ljava/security/GeneralSecurityException;
    invoke-static {}, Lcom/google/crypto/tink/mac/MacWrapper;->access$000()Ljava/util/logging/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tag prefix matches a key, but cannot verify: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 86
    .end local v4    # "entry":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/Mac;>;"
    .end local v5    # "e":Ljava/security/GeneralSecurityException;
    goto :goto_0

    .line 89
    :cond_1
    iget-object v3, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->primitives:Lcom/google/crypto/tink/PrimitiveSet;

    invoke-virtual {v3}, Lcom/google/crypto/tink/PrimitiveSet;->getRawPrimitives()Ljava/util/List;

    move-result-object v2

    .line 90
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/PrimitiveSet$Entry;

    .line 92
    .restart local v4    # "entry":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/Mac;>;"
    :try_start_1
    invoke-virtual {v4}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getPrimitive()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/crypto/tink/Mac;

    invoke-interface {v5, p1, p2}, Lcom/google/crypto/tink/Mac;->verifyMac([B[B)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    return-void

    .line 95
    :catch_1
    move-exception v5

    .line 98
    .end local v4    # "entry":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/Mac;>;"
    goto :goto_2

    .line 100
    :cond_2
    new-instance v3, Ljava/security/GeneralSecurityException;

    const-string v4, "invalid MAC"

    invoke-direct {v3, v4}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 68
    .end local v0    # "prefix":[B
    .end local v1    # "macNoPrefix":[B
    .end local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/Mac;>;>;"
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "tag too short"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
