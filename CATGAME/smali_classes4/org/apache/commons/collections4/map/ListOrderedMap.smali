.class public Lorg/apache/commons/collections4/map/ListOrderedMap;
.super Lorg/apache/commons/collections4/map/AbstractMapDecorator;
.source "ListOrderedMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/OrderedMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;,
        Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapEntry;,
        Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedIterator;,
        Lorg/apache/commons/collections4/map/ListOrderedMap$EntrySetView;,
        Lorg/apache/commons/collections4/map/ListOrderedMap$KeySetView;,
        Lorg/apache/commons/collections4/map/ListOrderedMap$ValuesView;
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
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/OrderedMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x25dc6f35f733ef66L


# instance fields
.field private final insertOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 118
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;-><init>(Ljava/util/Map;)V

    .line 119
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 128
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    .line 129
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->decorated()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 130
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections4/map/ListOrderedMap;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/map/ListOrderedMap;

    .line 84
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    return-object v0
.end method

.method public static listOrderedMap(Ljava/util/Map;)Lorg/apache/commons/collections4/map/ListOrderedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/map/ListOrderedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 107
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/ListOrderedMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 156
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->map:Ljava/util/Map;

    .line 157
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 142
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 143
    return-void
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation

    .line 507
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->keyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 286
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 287
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 288
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 357
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/ListOrderedMap$EntrySetView;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/map/ListOrderedMap$EntrySetView;-><init>(Lorg/apache/commons/collections4/map/ListOrderedMap;Ljava/util/List;)V

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 174
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 175
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 399
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 410
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 420
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public keyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation

    .line 315
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/commons/collections4/list/UnmodifiableList;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 301
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/ListOrderedMap$KeySetView;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/ListOrderedMap$KeySetView;-><init>(Lorg/apache/commons/collections4/map/ListOrderedMap;)V

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 188
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 189
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1

    .line 84
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 163
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;-><init>(Lorg/apache/commons/collections4/map/ListOrderedMap;)V

    return-object v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 203
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 204
    .local v0, "index":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 205
    iget-object v1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 207
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 219
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 220
    .local v0, "index":I
    if-lez v0, :cond_0

    .line 221
    iget-object v1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 223
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public put(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)TV;"
        }
    .end annotation

    .line 457
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    if-ltz p1, :cond_2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_2

    .line 461
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->decorated()Ljava/util/Map;

    move-result-object v0

    .line 462
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 463
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 464
    .local v1, "result":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 465
    .local v2, "pos":I
    iget-object v3, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 466
    if-ge v2, p1, :cond_0

    .line 467
    add-int/lit8 p1, p1, -0x1

    .line 469
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v3, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 470
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    return-object v1

    .line 473
    .end local v1    # "result":Ljava/lang/Object;, "TV;"
    .end local v2    # "pos":I
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 474
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const/4 v1, 0x0

    return-object v1

    .line 458
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 229
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 234
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 235
    .local v0, "result":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    return-object v0
.end method

.method public putAll(ILjava/util/Map;)V
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 255
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    if-ltz p1, :cond_2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_2

    .line 258
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 259
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 260
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/map/ListOrderedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .line 263
    .local v3, "contains":Z
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, p1, v4, v5}, Lorg/apache/commons/collections4/map/ListOrderedMap;->put(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    if-nez v3, :cond_0

    .line 266
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 269
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/collections4/map/ListOrderedMap;->indexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move p1, v4

    .line 271
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "contains":Z
    :goto_1
    goto :goto_0

    .line 272
    :cond_1
    return-void

    .line 256
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 241
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 242
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/map/ListOrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 244
    :cond_0
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 486
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/ListOrderedMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 276
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 277
    .local v0, "result":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->decorated()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->decorated()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 281
    :cond_0
    return-object v0
.end method

.method public setValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 433
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 434
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/collections4/map/ListOrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 368
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    const-string v0, "{}"

    return-object v0

    .line 371
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 373
    const/4 v1, 0x1

    .line 374
    .local v1, "first":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 375
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 376
    .local v4, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 377
    .local v5, "value":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1

    .line 378
    const/4 v1, 0x0

    goto :goto_1

    .line 380
    :cond_1
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :goto_1
    const-string v6, "(this Map)"

    if-ne v4, p0, :cond_2

    move-object v7, v6

    goto :goto_2

    :cond_2
    move-object v7, v4

    :goto_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 383
    const/16 v7, 0x3d

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    if-ne v5, p0, :cond_3

    goto :goto_3

    :cond_3
    move-object v6, v5

    :goto_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 385
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_0

    .line 386
    :cond_4
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public valueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 345
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/ListOrderedMap$ValuesView;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/ListOrderedMap$ValuesView;-><init>(Lorg/apache/commons/collections4/map/ListOrderedMap;)V

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 331
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/ListOrderedMap$ValuesView;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/ListOrderedMap$ValuesView;-><init>(Lorg/apache/commons/collections4/map/ListOrderedMap;)V

    return-object v0
.end method
