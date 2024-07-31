.class public Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;
.super Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;
.source "TransformedMultiValuedMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1337954L


# instance fields
.field private final keyTransformer:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TK;>;"
        }
    .end annotation
.end field

.field private final valueTransformer:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "-TV;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/MultiValuedMap;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TK;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TV;+TV;>;)V"
        }
    .end annotation

    .line 119
    .local p0, "this":Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap<TK;TV;>;"
    .local p1, "map":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<TK;TV;>;"
    .local p2, "keyTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TK;+TK;>;"
    .local p3, "valueTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TV;+TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;-><init>(Lorg/apache/commons/collections4/MultiValuedMap;)V

    .line 120
    iput-object p2, p0, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->keyTransformer:Lorg/apache/commons/collections4/Transformer;

    .line 121
    iput-object p3, p0, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->valueTransformer:Lorg/apache/commons/collections4/Transformer;

    .line 122
    return-void
.end method

.method public static transformedMap(Lorg/apache/commons/collections4/MultiValuedMap;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TK;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TV;+TV;>;)",
            "Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 94
    .local p0, "map":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<TK;TV;>;"
    .local p1, "keyTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TK;+TK;>;"
    .local p2, "valueTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TV;+TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;-><init>(Lorg/apache/commons/collections4/MultiValuedMap;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V

    .line 96
    .local v0, "decorated":Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap<TK;TV;>;"
    invoke-interface {p0}, Lorg/apache/commons/collections4/MultiValuedMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;

    invoke-direct {v1, p0}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>(Lorg/apache/commons/collections4/MultiValuedMap;)V

    .line 98
    .local v1, "mapCopy":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<TK;TV;>;"
    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->clear()V

    .line 99
    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->putAll(Lorg/apache/commons/collections4/MultiValuedMap;)Z

    .line 101
    .end local v1    # "mapCopy":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<TK;TV;>;"
    :cond_0
    return-object v0
.end method

.method public static transformingMap(Lorg/apache/commons/collections4/MultiValuedMap;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TK;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TV;+TV;>;)",
            "Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 72
    .local p0, "map":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<TK;TV;>;"
    .local p1, "keyTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TK;+TK;>;"
    .local p2, "valueTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TV;+TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;-><init>(Lorg/apache/commons/collections4/MultiValuedMap;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 156
    .local p0, "this":Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->transformKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->transformValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/collections4/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 161
    .local p0, "this":Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    if-eqz p2, :cond_1

    .line 165
    invoke-static {p2}, Lorg/apache/commons/collections4/FluentIterable;->of(Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->valueTransformer:Lorg/apache/commons/collections4/Transformer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/FluentIterable;->transform(Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/FluentIterable;

    move-result-object v0

    .line 166
    .local v0, "transformedValues":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TV;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 167
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TV;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->transformKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/collections4/MultiValuedMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/apache/commons/collections4/CollectionUtils;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 162
    .end local v0    # "transformedValues":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TV;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TV;>;"
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Values must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .line 172
    .local p0, "this":Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    if-eqz p1, :cond_1

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "changed":Z
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 177
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 178
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 179
    :cond_0
    return v0

    .line 173
    .end local v0    # "changed":Z
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Map must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Lorg/apache/commons/collections4/MultiValuedMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .line 184
    .local p0, "this":Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap<TK;TV;>;"
    .local p1, "map":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<+TK;+TV;>;"
    if-eqz p1, :cond_1

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "changed":Z
    invoke-interface {p1}, Lorg/apache/commons/collections4/MultiValuedMap;->entries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 189
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 190
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 191
    :cond_0
    return v0

    .line 185
    .end local v0    # "changed":Z
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Map must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected transformKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 133
    .local p0, "this":Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap<TK;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->keyTransformer:Lorg/apache/commons/collections4/Transformer;

    if-nez v0, :cond_0

    .line 134
    return-object p1

    .line 136
    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected transformValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 148
    .local p0, "this":Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap<TK;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->valueTransformer:Lorg/apache/commons/collections4/Transformer;

    if-nez v0, :cond_0

    .line 149
    return-object p1

    .line 151
    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
