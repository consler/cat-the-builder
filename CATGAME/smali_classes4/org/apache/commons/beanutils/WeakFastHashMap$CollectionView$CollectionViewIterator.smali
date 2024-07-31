.class Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;
.super Ljava/lang/Object;
.source "WeakFastHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollectionViewIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private expected:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private lastReturned:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;


# direct methods
.method public constructor <init>(Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;)V
    .locals 1

    .line 669
    .local p0, "this":Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;, "Lorg/apache/commons/beanutils/WeakFastHashMap<TK;TV;>.CollectionView<TE;>.CollectionViewIterator;"
    iput-object p1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    .line 670
    iget-object p1, p1, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {p1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    .line 671
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->iterator:Ljava/util/Iterator;

    .line 672
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 675
    .local p0, "this":Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;, "Lorg/apache/commons/beanutils/WeakFastHashMap<TK;TV;>.CollectionView<TE;>.CollectionViewIterator;"
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;

    iget-object v1, v1, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 678
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0

    .line 676
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 682
    .local p0, "this":Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;, "Lorg/apache/commons/beanutils/WeakFastHashMap<TK;TV;>.CollectionView<TE;>.CollectionViewIterator;"
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;

    iget-object v1, v1, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 685
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    .line 686
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;

    invoke-virtual {v1, v0}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->iteratorNext(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 683
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 4

    .line 690
    .local p0, "this":Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;, "Lorg/apache/commons/beanutils/WeakFastHashMap<TK;TV;>.CollectionView<TE;>.CollectionViewIterator;"
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    if-eqz v0, :cond_2

    .line 693
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;

    iget-object v0, v0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$300(Lorg/apache/commons/beanutils/WeakFastHashMap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;

    iget-object v0, v0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    monitor-enter v0

    .line 695
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    iget-object v3, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;

    iget-object v3, v3, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v3}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 698
    iget-object v2, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;

    iget-object v2, v2, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    iget-object v3, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/beanutils/WeakFastHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    iput-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    .line 700
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;

    iget-object v1, v1, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    .line 701
    monitor-exit v0

    goto :goto_0

    .line 696
    :cond_0
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 701
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 703
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 704
    iput-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    .line 706
    :goto_0
    return-void

    .line 691
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
