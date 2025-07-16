.class public Lorg/apache/commons/collections4/map/MultiValueMap;
.super Lorg/apache/commons/collections4/map/AbstractMapDecorator;
.source "MultiValueMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/MultiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/MultiValueMap$ReflectionFactory;,
        Lorg/apache/commons/collections4/map/MultiValueMap$ValuesIterator;,
        Lorg/apache/commons/collections4/map/MultiValueMap$Values;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractMapDecorator<",
        "TK;",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/apache/commons/collections4/MultiMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1eba46b504a846b7L


# instance fields
.field private final collectionFactory:Lorg/apache/commons/collections4/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Factory<",
            "+",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private transient valuesView:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lorg/apache/commons/collections4/map/MultiValueMap$ReflectionFactory;

    const-class v2, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lorg/apache/commons/collections4/map/MultiValueMap$ReflectionFactory;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/MultiValueMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/Factory;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Lorg/apache/commons/collections4/Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection<",
            "TV;>;>(",
            "Ljava/util/Map<",
            "TK;-TC;>;",
            "Lorg/apache/commons/collections4/Factory<",
            "TC;>;)V"
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    if-eqz p2, :cond_0

    .line 156
    iput-object p2, p0, Lorg/apache/commons/collections4/map/MultiValueMap;->collectionFactory:Lorg/apache/commons/collections4/Factory;

    return-void

    .line 154
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The factory must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static multiValueMap(Ljava/util/Map;)Lorg/apache/commons/collections4/map/MultiValueMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;-",
            "Ljava/util/Collection<",
            "TV;>;>;)",
            "Lorg/apache/commons/collections4/map/MultiValueMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 94
    const-class v0, Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lorg/apache/commons/collections4/map/MultiValueMap;->multiValueMap(Ljava/util/Map;Ljava/lang/Class;)Lorg/apache/commons/collections4/map/MultiValueMap;

    move-result-object p0

    return-object p0
.end method

.method public static multiValueMap(Ljava/util/Map;Ljava/lang/Class;)Lorg/apache/commons/collections4/map/MultiValueMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "TV;>;>(",
            "Ljava/util/Map<",
            "TK;-TC;>;",
            "Ljava/lang/Class<",
            "TC;>;)",
            "Lorg/apache/commons/collections4/map/MultiValueMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 111
    new-instance v0, Lorg/apache/commons/collections4/map/MultiValueMap;

    new-instance v1, Lorg/apache/commons/collections4/map/MultiValueMap$ReflectionFactory;

    invoke-direct {v1, p1}, Lorg/apache/commons/collections4/map/MultiValueMap$ReflectionFactory;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/map/MultiValueMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/Factory;)V

    return-object v0
.end method

.method public static multiValueMap(Ljava/util/Map;Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/map/MultiValueMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "TV;>;>(",
            "Ljava/util/Map<",
            "TK;-TC;>;",
            "Lorg/apache/commons/collections4/Factory<",
            "TC;>;)",
            "Lorg/apache/commons/collections4/map/MultiValueMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 128
    new-instance v0, Lorg/apache/commons/collections4/map/MultiValueMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/Factory;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 182
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 183
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/commons/collections4/map/MultiValueMap;->map:Ljava/util/Map;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 169
    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 200
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiValueMap;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    .line 243
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiValueMap;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 245
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 246
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 344
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 348
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected createCollection(I)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 489
    iget-object p1, p0, Lorg/apache/commons/collections4/map/MultiValueMap;->collectionFactory:Lorg/apache/commons/collections4/Factory;

    invoke-interface {p1}, Lorg/apache/commons/collections4/Factory;->create()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 319
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 360
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiValueMap;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiValueMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 432
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 434
    new-instance v1, Lorg/apache/commons/collections4/map/MultiValueMap$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/collections4/map/MultiValueMap$1;-><init>(Lorg/apache/commons/collections4/map/MultiValueMap;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public iterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 412
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyIterator;->emptyIterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    .line 415
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/MultiValueMap$ValuesIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap$ValuesIterator;-><init>(Lorg/apache/commons/collections4/map/MultiValueMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 268
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 270
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/MultiValueMap;->createCollection(I)Ljava/util/Collection;

    move-result-object v1

    .line 271
    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 274
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiValueMap;->decorated()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 278
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    return-object p2
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;*>;)V"
        }
    .end annotation

    .line 297
    instance-of v0, p1, Lorg/apache/commons/collections4/MultiMap;

    if-eqz v0, :cond_0

    .line 298
    check-cast p1, Lorg/apache/commons/collections4/MultiMap;

    invoke-interface {p1}, Lorg/apache/commons/collections4/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 299
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections4/map/MultiValueMap;->putAll(Ljava/lang/Object;Ljava/util/Collection;)Z

    goto :goto_0

    .line 302
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 303
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections4/map/MultiValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public putAll(Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 386
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    if-nez v1, :cond_1

    .line 392
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/map/MultiValueMap;->createCollection(I)Ljava/util/Collection;

    move-result-object v1

    .line 393
    invoke-interface {v1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 394
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 396
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiValueMap;->decorated()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0

    .line 400
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    :cond_2
    :goto_0
    return v0
.end method

.method public removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 218
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 222
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return v1

    .line 226
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 227
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public size(Ljava/lang/Object;)I
    .locals 0

    .line 370
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 374
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    return p1
.end method

.method public totalSize()I
    .locals 3

    .line 472
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiValueMap;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 473
    invoke-static {v2}, Lorg/apache/commons/collections4/CollectionUtils;->size(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap;->valuesView:Ljava/util/Collection;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/MultiValueMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/map/MultiValueMap$Values;-><init>(Lorg/apache/commons/collections4/map/MultiValueMap;Lorg/apache/commons/collections4/map/MultiValueMap$1;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap;->valuesView:Ljava/util/Collection;

    :goto_0
    return-object v0
.end method
