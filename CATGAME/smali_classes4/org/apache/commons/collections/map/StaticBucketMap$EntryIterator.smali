.class Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;
.super Ljava/lang/Object;
.source "StaticBucketMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/StaticBucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation


# instance fields
.field private bucket:I

.field private current:Ljava/util/ArrayList;

.field private last:Ljava/util/Map$Entry;

.field private final synthetic this$0:Lorg/apache/commons/collections/map/StaticBucketMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/map/StaticBucketMap;)V
    .locals 0

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    .line 501
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->current:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections/map/StaticBucketMap;Lorg/apache/commons/collections/map/StaticBucketMap$1;)V
    .locals 0

    .line 499
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;-><init>(Lorg/apache/commons/collections/map/StaticBucketMap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 507
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->current:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    return v1

    .line 508
    :cond_0
    :goto_0
    iget v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->bucket:I

    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-static {v2}, Lorg/apache/commons/collections/map/StaticBucketMap;->access$500(Lorg/apache/commons/collections/map/StaticBucketMap;)[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 509
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-static {v0}, Lorg/apache/commons/collections/map/StaticBucketMap;->access$600(Lorg/apache/commons/collections/map/StaticBucketMap;)[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    move-result-object v0

    iget v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->bucket:I

    aget-object v0, v0, v2

    monitor-enter v0

    .line 510
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-static {v2}, Lorg/apache/commons/collections/map/StaticBucketMap;->access$500(Lorg/apache/commons/collections/map/StaticBucketMap;)[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->bucket:I

    aget-object v2, v2, v3

    :goto_1
    if-eqz v2, :cond_1

    .line 512
    iget-object v3, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->current:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v2, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    goto :goto_1

    .line 515
    :cond_1
    iget v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->bucket:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->bucket:I

    .line 516
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->current:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    monitor-exit v0

    return v1

    .line 517
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 529
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->nextEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected nextEntry()Ljava/util/Map$Entry;
    .locals 2

    .line 523
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->current:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->last:Ljava/util/Map$Entry;

    return-object v0

    .line 523
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 533
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->last:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 534
    iget-object v1, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/map/StaticBucketMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 535
    iput-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->last:Ljava/util/Map$Entry;

    return-void

    .line 533
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
