.class Lorg/apache/commons/collections/map/StaticBucketMap$KeySet;
.super Ljava/util/AbstractSet;
.source "StaticBucketMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/StaticBucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/map/StaticBucketMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/map/StaticBucketMap;)V
    .locals 0

    .line 601
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/map/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections/map/StaticBucketMap;Lorg/apache/commons/collections/map/StaticBucketMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/collections/map/StaticBucketMap;
    .param p2, "x1"    # Lorg/apache/commons/collections/map/StaticBucketMap$1;

    .line 601
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/StaticBucketMap$KeySet;-><init>(Lorg/apache/commons/collections/map/StaticBucketMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 608
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/StaticBucketMap;->clear()V

    .line 609
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 616
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/StaticBucketMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .line 612
    new-instance v0, Lorg/apache/commons/collections/map/StaticBucketMap$KeyIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/map/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/map/StaticBucketMap$KeyIterator;-><init>(Lorg/apache/commons/collections/map/StaticBucketMap;Lorg/apache/commons/collections/map/StaticBucketMap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 620
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-static {v0, p1}, Lorg/apache/commons/collections/map/StaticBucketMap;->access$800(Lorg/apache/commons/collections/map/StaticBucketMap;Ljava/lang/Object;)I

    move-result v0

    .line 621
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/commons/collections/map/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-static {v1}, Lorg/apache/commons/collections/map/StaticBucketMap;->access$600(Lorg/apache/commons/collections/map/StaticBucketMap;)[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    move-result-object v1

    aget-object v1, v1, v0

    monitor-enter v1

    .line 622
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-static {v2}, Lorg/apache/commons/collections/map/StaticBucketMap;->access$500(Lorg/apache/commons/collections/map/StaticBucketMap;)[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    move-result-object v2

    aget-object v2, v2, v0

    .local v2, "n":Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :goto_0
    if-eqz v2, :cond_2

    .line 623
    invoke-virtual {v2}, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 624
    .local v3, "k":Ljava/lang/Object;
    if-eq v3, p1, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 622
    .end local v3    # "k":Ljava/lang/Object;
    :cond_0
    iget-object v3, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    move-object v2, v3

    goto :goto_0

    .line 625
    .restart local v3    # "k":Ljava/lang/Object;
    :cond_1
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/collections/map/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-virtual {v4, v3}, Lorg/apache/commons/collections/map/StaticBucketMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const/4 v4, 0x1

    monitor-exit v1

    return v4

    .line 629
    .end local v2    # "n":Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    .end local v3    # "k":Ljava/lang/Object;
    :cond_2
    monitor-exit v1

    .line 630
    const/4 v1, 0x0

    return v1

    .line 629
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public size()I
    .locals 1

    .line 604
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/StaticBucketMap;->size()I

    move-result v0

    return v0
.end method
