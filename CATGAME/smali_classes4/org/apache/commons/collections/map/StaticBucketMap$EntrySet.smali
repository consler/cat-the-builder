.class Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "StaticBucketMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/StaticBucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/map/StaticBucketMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/map/StaticBucketMap;)V
    .locals 0

    .line 556
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections/map/StaticBucketMap;Lorg/apache/commons/collections/map/StaticBucketMap$1;)V
    .locals 0

    .line 556
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;-><init>(Lorg/apache/commons/collections/map/StaticBucketMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 563
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/StaticBucketMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 571
    check-cast p1, Ljava/util/Map$Entry;

    .line 572
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections/map/StaticBucketMap;->access$800(Lorg/apache/commons/collections/map/StaticBucketMap;Ljava/lang/Object;)I

    move-result v0

    .line 573
    iget-object v1, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-static {v1}, Lorg/apache/commons/collections/map/StaticBucketMap;->access$600(Lorg/apache/commons/collections/map/StaticBucketMap;)[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    move-result-object v1

    aget-object v1, v1, v0

    monitor-enter v1

    .line 574
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-static {v2}, Lorg/apache/commons/collections/map/StaticBucketMap;->access$500(Lorg/apache/commons/collections/map/StaticBucketMap;)[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    move-result-object v2

    aget-object v0, v2, v0

    :goto_0
    if-eqz v0, :cond_1

    .line 575
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v1

    const/4 p1, 0x1

    return p1

    .line 574
    :cond_0
    iget-object v0, v0, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    goto :goto_0

    .line 577
    :cond_1
    monitor-exit v1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .line 567
    new-instance v0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;-><init>(Lorg/apache/commons/collections/map/StaticBucketMap;Lorg/apache/commons/collections/map/StaticBucketMap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .line 582
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 585
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 586
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/commons/collections/map/StaticBucketMap;->access$800(Lorg/apache/commons/collections/map/StaticBucketMap;Ljava/lang/Object;)I

    move-result v0

    .line 587
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-static {v2}, Lorg/apache/commons/collections/map/StaticBucketMap;->access$600(Lorg/apache/commons/collections/map/StaticBucketMap;)[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    move-result-object v2

    aget-object v2, v2, v0

    monitor-enter v2

    .line 588
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-static {v3}, Lorg/apache/commons/collections/map/StaticBucketMap;->access$500(Lorg/apache/commons/collections/map/StaticBucketMap;)[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    move-result-object v3

    aget-object v0, v3, v0

    :goto_0
    if-eqz v0, :cond_2

    .line 589
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 590
    iget-object p1, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/collections/map/StaticBucketMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    monitor-exit v2

    const/4 p1, 0x1

    return p1

    .line 588
    :cond_1
    iget-object v0, v0, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    goto :goto_0

    .line 594
    :cond_2
    monitor-exit v2

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public size()I
    .locals 1

    .line 559
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/StaticBucketMap;->size()I

    move-result v0

    return v0
.end method
