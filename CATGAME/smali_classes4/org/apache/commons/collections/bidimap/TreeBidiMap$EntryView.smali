.class Lorg/apache/commons/collections/bidimap/TreeBidiMap$EntryView;
.super Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;
.source "TreeBidiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntryView"
.end annotation


# instance fields
.field private final oppositeType:I


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;II)V
    .locals 1
    .param p1, "main"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap;
    .param p2, "orderType"    # I
    .param p3, "dataType"    # I

    .line 1677
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;II)V

    .line 1678
    invoke-static {p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2300(I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$EntryView;->oppositeType:I

    .line 1679
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1682
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1683
    return v1

    .line 1685
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 1686
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1687
    .local v2, "value":Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$EntryView;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    iget v5, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$EntryView;->orderType:I

    invoke-static {v3, v4, v5}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1400(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    .line 1688
    .local v3, "node":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    if-eqz v3, :cond_1

    iget v4, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$EntryView;->oppositeType:I

    invoke-static {v3, v4}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1692
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1693
    return v1

    .line 1695
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 1696
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1697
    .local v2, "value":Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$EntryView;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    iget v5, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$EntryView;->orderType:I

    invoke-static {v3, v4, v5}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1400(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    .line 1698
    .local v3, "node":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    if-eqz v3, :cond_1

    iget v4, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$EntryView;->oppositeType:I

    invoke-static {v3, v4}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1699
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$EntryView;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-static {v1, v3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2100(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V

    .line 1700
    const/4 v1, 0x1

    return v1

    .line 1702
    :cond_1
    return v1
.end method
