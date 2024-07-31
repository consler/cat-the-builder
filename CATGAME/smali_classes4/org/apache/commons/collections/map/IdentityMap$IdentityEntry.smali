.class public Lorg/apache/commons/collections/map/IdentityMap$IdentityEntry;
.super Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
.source "IdentityMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/IdentityMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "IdentityEntry"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "next"    # Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .param p2, "hashCode"    # I
    .param p3, "key"    # Ljava/lang/Object;
    .param p4, "value"    # Ljava/lang/Object;

    .line 147
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 148
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 151
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 152
    return v0

    .line 154
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 155
    return v2

    .line 157
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    .line 158
    .local v1, "other":Ljava/util/Map$Entry;
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/IdentityMap$IdentityEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/IdentityMap$IdentityEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 164
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/IdentityMap$IdentityEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/IdentityMap$IdentityEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
