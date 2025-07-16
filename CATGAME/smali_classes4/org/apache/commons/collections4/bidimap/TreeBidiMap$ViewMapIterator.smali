.class Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapIterator;
.super Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;
.source "TreeBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/OrderedMapIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<",
        "TK;TV;>.ViewIterator;",
        "Lorg/apache/commons/collections4/OrderedMapIterator<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0

    .line 1750
    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapIterator;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    .line 1751
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1756
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapIterator;->lastReturnedNode:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    if-eqz v0, :cond_0

    .line 1760
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapIterator;->lastReturnedNode:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0

    .line 1757
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 1745
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapIterator;->getKey()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1765
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapIterator;->lastReturnedNode:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    if-eqz v0, :cond_0

    .line 1769
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapIterator;->lastReturnedNode:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0

    .line 1766
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1745
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapIterator;->getValue()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1779
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapIterator;->navigateNext()Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1745
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapIterator;->next()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1784
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapIterator;->navigatePrevious()Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 1745
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapIterator;->previous()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1774
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1745
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapIterator;->setValue(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method
