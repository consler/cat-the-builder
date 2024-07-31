.class Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseEntryView;
.super Lorg/apache/commons/collections4/bidimap/TreeBidiMap$View;
.source "TreeBidiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InverseEntryView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<",
        "TK;TV;>.View<",
        "Ljava/util/Map$Entry<",
        "TV;TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    .line 1620
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseEntryView;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.InverseEntryView;"
    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseEntryView;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    .line 1621
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$View;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1622
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1626
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseEntryView;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.InverseEntryView;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1627
    return v1

    .line 1629
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 1630
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1631
    .local v2, "value":Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseEntryView;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$1800(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v3

    .line 1632
    .local v3, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 1652
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseEntryView;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.InverseEntryView;"
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapEntryIterator;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseEntryView;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapEntryIterator;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1637
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseEntryView;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.InverseEntryView;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1638
    return v1

    .line 1640
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 1641
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1642
    .local v2, "value":Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseEntryView;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$1800(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v3

    .line 1643
    .local v3, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1644
    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseEntryView;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-static {v1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;)V

    .line 1645
    const/4 v1, 0x1

    return v1

    .line 1647
    :cond_1
    return v1
.end method
