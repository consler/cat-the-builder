.class public Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "AbstractHashedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EntrySet"
.end annotation


# instance fields
.field protected final parent:Lorg/apache/commons/collections/map/AbstractHashedMap;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V
    .locals 0
    .param p1, "parent"    # Lorg/apache/commons/collections/map/AbstractHashedMap;

    .line 812
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 813
    iput-object p1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;->parent:Lorg/apache/commons/collections/map/AbstractHashedMap;

    .line 814
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 821
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;->parent:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clear()V

    .line 822
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "entry"    # Ljava/lang/Object;

    .line 825
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 826
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 827
    .local v0, "e":Ljava/util/Map$Entry;
    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;->parent:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object v2

    .line 828
    .local v2, "match":Ljava/util/Map$Entry;
    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 830
    .end local v0    # "e":Ljava/util/Map$Entry;
    .end local v2    # "match":Ljava/util/Map$Entry;
    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 847
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;->parent:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->createEntrySetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 834
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 835
    return v1

    .line 837
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 838
    return v1

    .line 840
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 841
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 842
    .local v1, "key":Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;->parent:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v2, v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    const/4 v2, 0x1

    return v2
.end method

.method public size()I
    .locals 1

    .line 817
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;->parent:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    return v0
.end method
