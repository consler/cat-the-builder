.class public Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;
.super Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;
.source "DualTreeBidiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;Ljava/util/SortedMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap<",
            "TK;TV;>;",
            "Ljava/util/SortedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 249
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;, "Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap<TK;TV;>;"
    .local p1, "bidi":Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap<TK;TV;>;"
    .local p2, "sm":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;

    iget-object v1, p1, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;->reverseMap:Ljava/util/Map;

    iget-object v2, p1, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;->inverseBidiMap:Lorg/apache/commons/collections4/BidiMap;

    invoke-direct {v0, p2, v1, v2}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections4/BidiMap;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;-><init>(Ljava/util/SortedMap;)V

    .line 250
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 261
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;, "Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 263
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 265
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_0
    return-void
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 255
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;, "Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;->decorated()Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic decorated()Ljava/util/Map;
    .locals 1

    .line 239
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;, "Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;->decorated()Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic decorated()Ljava/util/SortedMap;
    .locals 1

    .line 239
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;, "Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;->decorated()Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 284
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;, "Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;->decorated()Ljava/util/SortedMap;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 269
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;, "Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;->decorated()Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;

    move-result-object v1

    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;-><init>(Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 294
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;, "Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;->decorated()Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;->nextKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 289
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;, "Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;->decorated()Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;->previousKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 279
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;, "Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;->decorated()Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;

    move-result-object v1

    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;-><init>(Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 274
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;, "Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;->decorated()Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;

    move-result-object v1

    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap$ViewMap;-><init>(Lorg/apache/commons/collections4/bidimap/DualTreeBidiMap;Ljava/util/SortedMap;)V

    return-object v0
.end method
