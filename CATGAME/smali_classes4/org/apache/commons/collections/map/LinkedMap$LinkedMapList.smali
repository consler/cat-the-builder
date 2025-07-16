.class Lorg/apache/commons/collections/map/LinkedMap$LinkedMapList;
.super Ljava/util/AbstractList;
.source "LinkedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/LinkedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LinkedMapList"
.end annotation


# instance fields
.field final parent:Lorg/apache/commons/collections/map/LinkedMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/LinkedMap;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 216
    iput-object p1, p0, Lorg/apache/commons/collections/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections/map/LinkedMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 260
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/apache/commons/collections/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections/map/LinkedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/LinkedMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/apache/commons/collections/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections/map/LinkedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/LinkedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/apache/commons/collections/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections/map/LinkedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/LinkedMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/apache/commons/collections/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections/map/LinkedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/LinkedMap;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/apache/commons/collections/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections/map/LinkedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/LinkedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/iterators/UnmodifiableIterator;->decorate(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/apache/commons/collections/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections/map/LinkedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/LinkedMap;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 276
    invoke-super {p0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/iterators/UnmodifiableListIterator;->decorate(Ljava/util/ListIterator;)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 280
    invoke-super {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/collections/iterators/UnmodifiableListIterator;->decorate(Ljava/util/ListIterator;)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 0

    .line 244
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 248
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0

    .line 252
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0

    .line 256
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/apache/commons/collections/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections/map/LinkedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/LinkedMap;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 0

    .line 284
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/collections/list/UnmodifiableList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/apache/commons/collections/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections/map/LinkedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/LinkedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/apache/commons/collections/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections/map/LinkedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/LinkedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
