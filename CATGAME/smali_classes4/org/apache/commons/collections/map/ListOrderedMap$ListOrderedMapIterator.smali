.class Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;
.super Ljava/lang/Object;
.source "ListOrderedMap.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedMapIterator;
.implements Lorg/apache/commons/collections/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/ListOrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListOrderedMapIterator"
.end annotation


# instance fields
.field private iterator:Ljava/util/ListIterator;

.field private last:Ljava/lang/Object;

.field private final parent:Lorg/apache/commons/collections/map/ListOrderedMap;

.field private readable:Z


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/ListOrderedMap;)V
    .locals 1

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 637
    iput-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 638
    iput-boolean v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    .line 642
    iput-object p1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    .line 643
    iget-object p1, p1, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2

    .line 676
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    return-object v0

    .line 677
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .line 683
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/map/ListOrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 684
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 647
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 657
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 651
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 652
    iput-boolean v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .line 661
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 662
    iput-boolean v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 667
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 671
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    iget-object v0, v0, Lorg/apache/commons/collections/map/ListOrderedMap;->map:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 672
    iput-boolean v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    return-void

    .line 668
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 697
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    iget-object v0, v0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    const/4 v0, 0x0

    .line 698
    iput-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 699
    iput-boolean v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 690
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    iget-object v0, v0, Lorg/apache/commons/collections/map/ListOrderedMap;->map:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 691
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setValue() can only be called after next() and before remove()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 703
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 704
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Iterator["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Iterator[]"

    return-object v0
.end method
