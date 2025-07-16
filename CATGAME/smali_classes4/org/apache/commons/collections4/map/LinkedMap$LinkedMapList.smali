.class Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;
.super Ljava/util/AbstractList;
.source "LinkedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/LinkedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LinkedMapList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final parent:Lorg/apache/commons/collections4/map/LinkedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/LinkedMap<",
            "TK;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/LinkedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/LinkedMap<",
            "TK;*>;)V"
        }
    .end annotation

    .line 227
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 228
    iput-object p1, p0, Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections4/map/LinkedMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 291
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/LinkedMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/LinkedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/LinkedMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 248
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/LinkedMap;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/LinkedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableIterator;->unmodifiableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/LinkedMap;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TK;>;"
        }
    .end annotation

    .line 311
    invoke-super {p0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator;->umodifiableListIterator(Ljava/util/ListIterator;)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TK;>;"
        }
    .end annotation

    .line 316
    invoke-super {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/collections4/iterators/UnmodifiableListIterator;->umodifiableListIterator(Ljava/util/ListIterator;)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 263
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 268
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 281
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TK;>;)Z"
        }
    .end annotation

    .line 276
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 286
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/LinkedMap;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation

    .line 321
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/collections4/list/UnmodifiableList;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/LinkedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$LinkedMapList;->parent:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/LinkedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
