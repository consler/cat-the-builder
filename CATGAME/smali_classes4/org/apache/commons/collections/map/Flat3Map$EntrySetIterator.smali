.class Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;
.super Ljava/lang/Object;
.source "Flat3Map.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/Flat3Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntrySetIterator"
.end annotation


# instance fields
.field private canRemove:Z

.field private nextIndex:I

.field private final parent:Lorg/apache/commons/collections/map/Flat3Map;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/Flat3Map;)V
    .locals 1
    .param p1, "parent"    # Lorg/apache/commons/collections/map/Flat3Map;

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    .line 740
    iput-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    .line 744
    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    .line 745
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 819
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 820
    return v1

    .line 822
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    .line 823
    return v1

    .line 825
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 826
    .local v0, "other":Ljava/util/Map$Entry;
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 827
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 828
    .local v3, "value":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_2

    if-nez v4, :cond_4

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_3

    if-nez v4, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_1
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2

    .line 770
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    if-eqz v0, :cond_3

    .line 773
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 775
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$100(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 781
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid map index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 777
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$200(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 779
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$300(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 771
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .line 785
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    if-eqz v0, :cond_3

    .line 788
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 790
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$400(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 796
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid map index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$500(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 794
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$600(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 786
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 748
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v1}, Lorg/apache/commons/collections/map/Flat3Map;->access$000(Lorg/apache/commons/collections/map/Flat3Map;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 833
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 834
    return v1

    .line 836
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 837
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 838
    .local v2, "value":Ljava/lang/Object;
    if-nez v0, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v1, v3

    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 752
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    .line 756
    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    .line 757
    return-object p0

    .line 753
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No next() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 761
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/map/Flat3Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    .line 766
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    .line 767
    return-void

    .line 762
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 800
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    if-eqz v0, :cond_3

    .line 803
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 804
    .local v0, "old":Ljava/lang/Object;
    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 806
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections/map/Flat3Map;->access$402(Lorg/apache/commons/collections/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    goto :goto_0

    .line 809
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections/map/Flat3Map;->access$502(Lorg/apache/commons/collections/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    goto :goto_0

    .line 812
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections/map/Flat3Map;->access$602(Lorg/apache/commons/collections/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    :goto_0
    return-object v0

    .line 801
    .end local v0    # "old":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 843
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    if-eqz v0, :cond_0

    .line 844
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 846
    :cond_0
    const-string v0, ""

    return-object v0
.end method
