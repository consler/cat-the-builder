.class public Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;
.super Lorg/apache/commons/collections/map/AbstractSortedMapDecorator;
.source "DualTreeBidiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewMap"
.end annotation


# instance fields
.field final bidi:Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;Ljava/util/SortedMap;)V
    .locals 2
    .param p1, "bidi"    # Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;
    .param p2, "sm"    # Ljava/util/SortedMap;

    .line 218
    iget-object v0, p1, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p1, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->inverseBidiMap:Lorg/apache/commons/collections/BidiMap;

    invoke-virtual {p1, p2, v0, v1}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->createBidiMap(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)Lorg/apache/commons/collections/BidiMap;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/map/AbstractSortedMapDecorator;-><init>(Ljava/util/SortedMap;)V

    .line 219
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;->map:Ljava/util/Map;

    check-cast v0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;->bidi:Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;

    .line 220
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 229
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 233
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;->bidi:Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;

    iget-object v0, v0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .param p1, "toKey"    # Ljava/lang/Object;

    .line 236
    new-instance v0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;->bidi:Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;

    invoke-super {p0, p1}, Lorg/apache/commons/collections/map/AbstractSortedMapDecorator;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;-><init>(Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "toKey"    # Ljava/lang/Object;

    .line 244
    new-instance v0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;->bidi:Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;

    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/map/AbstractSortedMapDecorator;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;-><init>(Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .param p1, "fromKey"    # Ljava/lang/Object;

    .line 240
    new-instance v0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;->bidi:Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;

    invoke-super {p0, p1}, Lorg/apache/commons/collections/map/AbstractSortedMapDecorator;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;-><init>(Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;Ljava/util/SortedMap;)V

    return-object v0
.end method
