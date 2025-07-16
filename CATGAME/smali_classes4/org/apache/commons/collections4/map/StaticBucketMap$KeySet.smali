.class Lorg/apache/commons/collections4/map/StaticBucketMap$KeySet;
.super Ljava/util/AbstractSet;
.source "StaticBucketMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/StaticBucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/map/StaticBucketMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/map/StaticBucketMap;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections4/map/StaticBucketMap;Lorg/apache/commons/collections4/map/StaticBucketMap$1;)V
    .locals 0

    .line 627
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap$KeySet;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 636
    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/StaticBucketMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 646
    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 641
    new-instance v0, Lorg/apache/commons/collections4/map/StaticBucketMap$KeyIterator;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections4/map/StaticBucketMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/map/StaticBucketMap$KeyIterator;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap;Lorg/apache/commons/collections4/map/StaticBucketMap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .line 651
    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap;->access$900(Lorg/apache/commons/collections4/map/StaticBucketMap;Ljava/lang/Object;)I

    move-result v0

    .line 652
    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/map/StaticBucketMap;->access$600(Lorg/apache/commons/collections4/map/StaticBucketMap;)[Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;

    move-result-object v1

    aget-object v1, v1, v0

    monitor-enter v1

    .line 653
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-static {v2}, Lorg/apache/commons/collections4/map/StaticBucketMap;->access$500(Lorg/apache/commons/collections4/map/StaticBucketMap;)[Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    move-result-object v2

    aget-object v0, v2, v0

    :goto_0
    if-eqz v0, :cond_2

    .line 654
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_1

    if-eqz v2, :cond_0

    .line 655
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 653
    :cond_0
    iget-object v0, v0, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    goto :goto_0

    .line 656
    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-virtual {p1, v2}, Lorg/apache/commons/collections4/map/StaticBucketMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    monitor-exit v1

    const/4 p1, 0x1

    return p1

    .line 660
    :cond_2
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

.method public size()I
    .locals 1

    .line 631
    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/StaticBucketMap;->size()I

    move-result v0

    return v0
.end method
