.class Lorg/apache/commons/collections/StaticBucketMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "StaticBucketMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/StaticBucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/StaticBucketMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/StaticBucketMap;)V
    .locals 0

    .line 563
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections/StaticBucketMap;Lorg/apache/commons/collections/StaticBucketMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/collections/StaticBucketMap;
    .param p2, "x1"    # Lorg/apache/commons/collections/StaticBucketMap$1;

    .line 563
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;-><init>(Lorg/apache/commons/collections/StaticBucketMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 570
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/StaticBucketMap;->clear()V

    .line 571
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 578
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 579
    .local v0, "entry":Ljava/util/Map$Entry;
    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/collections/StaticBucketMap;->access$800(Lorg/apache/commons/collections/StaticBucketMap;Ljava/lang/Object;)I

    move-result v1

    .line 580
    .local v1, "hash":I
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-static {v2}, Lorg/apache/commons/collections/StaticBucketMap;->access$600(Lorg/apache/commons/collections/StaticBucketMap;)[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    move-result-object v2

    aget-object v2, v2, v1

    monitor-enter v2

    .line 581
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-static {v3}, Lorg/apache/commons/collections/StaticBucketMap;->access$500(Lorg/apache/commons/collections/StaticBucketMap;)[Lorg/apache/commons/collections/StaticBucketMap$Node;

    move-result-object v3

    aget-object v3, v3, v1

    .local v3, "n":Lorg/apache/commons/collections/StaticBucketMap$Node;
    :goto_0
    if-eqz v3, :cond_1

    .line 582
    invoke-virtual {v3, v0}, Lorg/apache/commons/collections/StaticBucketMap$Node;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    monitor-exit v2

    return v4

    .line 581
    :cond_0
    iget-object v4, v3, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    move-object v3, v4

    goto :goto_0

    .line 584
    .end local v3    # "n":Lorg/apache/commons/collections/StaticBucketMap$Node;
    :cond_1
    monitor-exit v2

    .line 585
    const/4 v2, 0x0

    return v2

    .line 584
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .line 574
    new-instance v0, Lorg/apache/commons/collections/StaticBucketMap$EntryIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/StaticBucketMap$EntryIterator;-><init>(Lorg/apache/commons/collections/StaticBucketMap;Lorg/apache/commons/collections/StaticBucketMap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 589
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 590
    return v1

    .line 592
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 593
    .local v0, "entry":Ljava/util/Map$Entry;
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/collections/StaticBucketMap;->access$800(Lorg/apache/commons/collections/StaticBucketMap;Ljava/lang/Object;)I

    move-result v2

    .line 594
    .local v2, "hash":I
    iget-object v3, p0, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-static {v3}, Lorg/apache/commons/collections/StaticBucketMap;->access$600(Lorg/apache/commons/collections/StaticBucketMap;)[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    move-result-object v3

    aget-object v3, v3, v2

    monitor-enter v3

    .line 595
    :try_start_0
    iget-object v4, p0, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-static {v4}, Lorg/apache/commons/collections/StaticBucketMap;->access$500(Lorg/apache/commons/collections/StaticBucketMap;)[Lorg/apache/commons/collections/StaticBucketMap$Node;

    move-result-object v4

    aget-object v4, v4, v2

    .local v4, "n":Lorg/apache/commons/collections/StaticBucketMap$Node;
    :goto_0
    if-eqz v4, :cond_2

    .line 596
    invoke-virtual {v4, v0}, Lorg/apache/commons/collections/StaticBucketMap$Node;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 597
    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-virtual {v4}, Lorg/apache/commons/collections/StaticBucketMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/commons/collections/StaticBucketMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const/4 v1, 0x1

    monitor-exit v3

    return v1

    .line 595
    :cond_1
    iget-object v5, v4, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    move-object v4, v5

    goto :goto_0

    .line 601
    .end local v4    # "n":Lorg/apache/commons/collections/StaticBucketMap$Node;
    :cond_2
    monitor-exit v3

    .line 602
    return v1

    .line 601
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public size()I
    .locals 1

    .line 566
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/StaticBucketMap;->size()I

    move-result v0

    return v0
.end method
