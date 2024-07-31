.class public abstract Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry;
.super Ljava/lang/Object;
.source "AbstractMultiSet.java"

# interfaces
.implements Lorg/apache/commons/collections4/MultiSet$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multiset/AbstractMultiSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "AbstractEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/MultiSet$Entry<",
        "TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 412
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .line 416
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry<TE;>;"
    instance-of v0, p1, Lorg/apache/commons/collections4/MultiSet$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 417
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections4/MultiSet$Entry;

    .line 418
    .local v0, "other":Lorg/apache/commons/collections4/MultiSet$Entry;, "Lorg/apache/commons/collections4/MultiSet$Entry<*>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry;->getElement()Ljava/lang/Object;

    move-result-object v2

    .line 419
    .local v2, "element":Ljava/lang/Object;, "TE;"
    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiSet$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    .line 421
    .local v3, "otherElement":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry;->getCount()I

    move-result v4

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiSet$Entry;->getCount()I

    move-result v5

    if-ne v4, v5, :cond_1

    if-eq v2, v3, :cond_0

    if-eqz v2, :cond_1

    .line 423
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 421
    :goto_0
    return v1

    .line 425
    .end local v0    # "other":Lorg/apache/commons/collections4/MultiSet$Entry;, "Lorg/apache/commons/collections4/MultiSet$Entry<*>;"
    .end local v2    # "element":Ljava/lang/Object;, "TE;"
    .end local v3    # "otherElement":Ljava/lang/Object;
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 430
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry;->getElement()Ljava/lang/Object;

    move-result-object v0

    .line 431
    .local v0, "element":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry;->getCount()I

    move-result v2

    xor-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 436
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry<TE;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry;->getElement()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s:%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
