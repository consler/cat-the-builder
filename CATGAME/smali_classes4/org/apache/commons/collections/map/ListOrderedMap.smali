.class public Lorg/apache/commons/collections/map/ListOrderedMap;
.super Lorg/apache/commons/collections/map/AbstractMapDecorator;
.source "ListOrderedMap.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;,
        Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapEntry;,
        Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;,
        Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;,
        Lorg/apache/commons/collections/map/ListOrderedMap$KeySetView;,
        Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x25dc6f35f733ef66L


# instance fields
.field protected final insertOrder:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/map/ListOrderedMap;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1

    .line 111
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static decorate(Ljava/util/Map;)Lorg/apache/commons/collections/OrderedMap;
    .locals 1

    .line 90
    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/ListOrderedMap;-><init>(Ljava/util/Map;)V

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

    .line 137
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 138
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->map:Ljava/util/Map;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 125
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 1

    .line 449
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->keyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 234
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 235
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .line 302
    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;

    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;-><init>(Lorg/apache/commons/collections/map/ListOrderedMap;Ljava/util/List;)V

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2

    .line 158
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 345
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 1

    .line 356
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/ListOrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 366
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public keyList()Ljava/util/List;
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/commons/collections/list/UnmodifiableList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .line 248
    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap$KeySetView;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/ListOrderedMap$KeySetView;-><init>(Lorg/apache/commons/collections/map/ListOrderedMap;)V

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2

    .line 171
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 172
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 1

    .line 144
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 186
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .locals 1

    .line 148
    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;-><init>(Lorg/apache/commons/collections/map/ListOrderedMap;)V

    return-object v0
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    .line 202
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public put(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 402
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 403
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 405
    iget-object v2, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 406
    iget-object v3, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-ge v2, p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 410
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 411
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 414
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 415
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 209
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 214
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 215
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2

    .line 221
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 223
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections/map/ListOrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 0

    .line 428
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/ListOrderedMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/ListOrderedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 228
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public setValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 378
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 379
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/map/ListOrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 312
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "{}"

    return-object v0

    .line 315
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    .line 319
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 320
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 321
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 322
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const-string v5, ", "

    .line 326
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v5, "(this Map)"

    if-ne v4, p0, :cond_2

    move-object v4, v5

    .line 328
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v4, 0x3d

    .line 329
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ne v3, p0, :cond_3

    move-object v3, v5

    .line 330
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    const/16 v1, 0x7d

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 333
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueList()Ljava/util/List;
    .locals 1

    .line 291
    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;-><init>(Lorg/apache/commons/collections/map/ListOrderedMap;)V

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .line 277
    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;-><init>(Lorg/apache/commons/collections/map/ListOrderedMap;)V

    return-object v0
.end method
