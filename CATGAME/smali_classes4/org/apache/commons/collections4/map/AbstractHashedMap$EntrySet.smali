.class public Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "AbstractHashedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 843
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet<TK;TV;>;"
    .local p1, "parent":Lorg/apache/commons/collections4/map/AbstractHashedMap;, "Lorg/apache/commons/collections4/map/AbstractHashedMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 844
    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    .line 845
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 854
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->clear()V

    .line 855
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "entry"    # Ljava/lang/Object;

    .line 859
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 860
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 861
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-result-object v2

    .line 862
    .local v2, "match":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 864
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "match":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 882
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->createEntrySetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 869
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 870
    return v1

    .line 872
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 873
    return v1

    .line 875
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 876
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    const/4 v1, 0x1

    return v1
.end method

.method public size()I
    .locals 1

    .line 849
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size()I

    move-result v0

    return v0
.end method
