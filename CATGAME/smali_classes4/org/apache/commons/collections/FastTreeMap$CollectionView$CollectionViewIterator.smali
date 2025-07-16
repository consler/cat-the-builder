.class Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;
.super Ljava/lang/Object;
.source "FastTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/FastTreeMap$CollectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollectionViewIterator"
.end annotation


# instance fields
.field private expected:Ljava/util/Map;

.field private iterator:Ljava/util/Iterator;

.field private lastReturned:Ljava/util/Map$Entry;

.field private final synthetic this$1:Lorg/apache/commons/collections/FastTreeMap$CollectionView;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/FastTreeMap$CollectionView;)V
    .locals 1

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastTreeMap$CollectionView;

    const/4 v0, 0x0

    .line 735
    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    .line 739
    invoke-static {p1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastTreeMap$CollectionView;)Lorg/apache/commons/collections/FastTreeMap;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    iput-object p1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    .line 740
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 744
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastTreeMap$CollectionView;

    invoke-static {v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastTreeMap$CollectionView;)Lorg/apache/commons/collections/FastTreeMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    if-ne v0, v1, :cond_0

    .line 747
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0

    .line 745
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 751
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastTreeMap$CollectionView;

    invoke-static {v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastTreeMap$CollectionView;)Lorg/apache/commons/collections/FastTreeMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    if-ne v0, v1, :cond_0

    .line 754
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    .line 755
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastTreeMap$CollectionView;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->iteratorNext(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 752
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 4

    .line 759
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    if-eqz v0, :cond_2

    .line 762
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastTreeMap$CollectionView;

    invoke-static {v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastTreeMap$CollectionView;)Lorg/apache/commons/collections/FastTreeMap;

    move-result-object v0

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastTreeMap$CollectionView;

    invoke-static {v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastTreeMap$CollectionView;)Lorg/apache/commons/collections/FastTreeMap;

    move-result-object v0

    monitor-enter v0

    .line 764
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    iget-object v3, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastTreeMap$CollectionView;

    invoke-static {v3}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastTreeMap$CollectionView;)Lorg/apache/commons/collections/FastTreeMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    if-ne v2, v3, :cond_0

    .line 767
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastTreeMap$CollectionView;

    invoke-static {v2}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastTreeMap$CollectionView;)Lorg/apache/commons/collections/FastTreeMap;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/collections/FastTreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    iput-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    .line 769
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastTreeMap$CollectionView;

    invoke-static {v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastTreeMap$CollectionView;)Lorg/apache/commons/collections/FastTreeMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    iput-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    .line 770
    monitor-exit v0

    goto :goto_0

    .line 765
    :cond_0
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 770
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 772
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 773
    iput-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    :goto_0
    return-void

    .line 760
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
