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
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;-><init>(Lorg/apache/commons/collections4/MultiValuedMap;)V

    .line 120
    iput-object p2, p0, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->keyTransformer:Lorg/apache/commons/collections4/Transformer;

    .line 121
    iput-object p3, p0, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->valueTransformer:Lorg/apache/commons/collections4/Transformer;

    return-void
.end method

.method public static transformedMap(Lorg/apache/commons/collections4/MultiValuedMap;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;
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

    .line 94
    new-instance v0, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;-><init>(Lorg/apache/commons/collections4/MultiValuedMap;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V

    .line 96
    invoke-interface {p0}, Lorg/apache/commons/collections4/MultiValuedMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 97
    new-instance p1, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;

    invoke-direct {p1, p0}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>(Lorg/apache/commons/collections4/MultiValuedMap;)V

    .line 98
    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->clear()V

    .line 99
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->putAll(Lorg/apache/commons/collections4/MultiValuedMap;)Z

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
    new-instance v0, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;-><init>(Lorg/apache/commons/collections4/MultiValuedMap;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->transformKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->transformValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)Z"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 165
    invoke-static {p2}, Lorg/apache/commons/collections4/FluentIterable;->of(Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->valueTransformer:Lorg/apache/commons/collections4/Transformer;

    invoke-virtual {p2, v0}, Lorg/apache/commons/collections4/FluentIterable;->transform(Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/FluentIterable;

    move-result-object p2

    .line 166
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 167
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->transformKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/MultiValuedMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/commons/collections4/CollectionUtils;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 162
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Values must not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putAll(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 176
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 177
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0

    .line 173
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Map must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putAll(Lorg/apache/commons/collections4/MultiValuedMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 188
    invoke-interface {p1}, Lorg/apache/commons/collections4/MultiValuedMap;->entries()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 189
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0

    .line 185
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Map must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected transformKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->keyTransformer:Lorg/apache/commons/collections4/Transformer;

    if-nez v0, :cond_0

    return-object p1

    .line 136
    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected transformValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->valueTransformer:Lorg/apache/commons/collections4/Transformer;

    if-nez v0, :cond_0

    return-object p1

    .line 151
    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
