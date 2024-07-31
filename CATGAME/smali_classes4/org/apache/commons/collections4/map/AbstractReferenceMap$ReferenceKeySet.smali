.class Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceKeySet;
.super Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReferenceKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet<",
        "TK;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "TK;*>;)V"
        }
    .end annotation

    .line 552
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceKeySet;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceKeySet<TK;>;"
    .local p1, "parent":Lorg/apache/commons/collections4/map/AbstractHashedMap;, "Lorg/apache/commons/collections4/map/AbstractHashedMap<TK;*>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    .line 553
    return-void
.end method


# virtual methods
.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 557
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceKeySet;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceKeySet<TK;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceKeySet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceKeySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 563
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceKeySet;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceKeySet<TK;>;"
    .local p1, "arr":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceKeySet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 564
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TK;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceKeySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 565
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_0

    .line 567
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
