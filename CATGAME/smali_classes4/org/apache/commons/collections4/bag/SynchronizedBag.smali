.class public Lorg/apache/commons/collections4/bag/SynchronizedBag;
.super Lorg/apache/commons/collections4/collection/SynchronizedCollection;
.source "SynchronizedBag.java"

# interfaces
.implements Lorg/apache/commons/collections4/Bag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/bag/SynchronizedBag$SynchronizedBagSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/SynchronizedCollection<",
        "TE;>;",
        "Lorg/apache/commons/collections4/Bag<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x703288b00a6a8835L


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/Bag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lorg/apache/commons/collections4/bag/SynchronizedBag;, "Lorg/apache/commons/collections4/bag/SynchronizedBag<TE;>;"
    .local p1, "bag":Lorg/apache/commons/collections4/Bag;, "Lorg/apache/commons/collections4/Bag<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    .line 65
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections4/Bag;Ljava/lang/Object;)V
    .locals 0
    .param p2, "lock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/apache/commons/collections4/bag/SynchronizedBag;, "Lorg/apache/commons/collections4/bag/SynchronizedBag<TE;>;"
    .local p1, "bag":Lorg/apache/commons/collections4/Bag;, "Lorg/apache/commons/collections4/Bag<TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public static synchronizedBag(Lorg/apache/commons/collections4/Bag;)Lorg/apache/commons/collections4/bag/SynchronizedBag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/bag/SynchronizedBag<",
            "TE;>;"
        }
    .end annotation

    .line 53
    .local p0, "bag":Lorg/apache/commons/collections4/Bag;, "Lorg/apache/commons/collections4/Bag<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/bag/SynchronizedBag;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/bag/SynchronizedBag;-><init>(Lorg/apache/commons/collections4/Bag;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Z
    .locals 2
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .line 108
    .local p0, "this":Lorg/apache/commons/collections4/bag/SynchronizedBag;, "Lorg/apache/commons/collections4/bag/SynchronizedBag<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/SynchronizedBag;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/SynchronizedBag;->getBag()Lorg/apache/commons/collections4/Bag;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/collections4/Bag;->add(Ljava/lang/Object;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 89
    .local p0, "this":Lorg/apache/commons/collections4/bag/SynchronizedBag;, "Lorg/apache/commons/collections4/bag/SynchronizedBag<TE;>;"
    if-ne p1, p0, :cond_0

    .line 90
    const/4 v0, 0x1

    return v0

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/SynchronizedBag;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/SynchronizedBag;->getBag()Lorg/apache/commons/collections4/Bag;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getBag()Lorg/apache/commons/collections4/Bag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/apache/commons/collections4/bag/SynchronizedBag;, "Lorg/apache/commons/collections4/bag/SynchronizedBag<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/SynchronizedBag;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/Bag;

    return-object v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 130
    .local p0, "this":Lorg/apache/commons/collections4/bag/SynchronizedBag;, "Lorg/apache/commons/collections4/bag/SynchronizedBag<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/SynchronizedBag;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/SynchronizedBag;->getBag()Lorg/apache/commons/collections4/Bag;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/commons/collections4/Bag;->getCount(Ljava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hashCode()I
    .locals 2

    .line 99
    .local p0, "this":Lorg/apache/commons/collections4/bag/SynchronizedBag;, "Lorg/apache/commons/collections4/bag/SynchronizedBag<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/SynchronizedBag;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/SynchronizedBag;->getBag()Lorg/apache/commons/collections4/Bag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(Ljava/lang/Object;I)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "count"    # I

    .line 115
    .local p0, "this":Lorg/apache/commons/collections4/bag/SynchronizedBag;, "Lorg/apache/commons/collections4/bag/SynchronizedBag<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/SynchronizedBag;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/SynchronizedBag;->getBag()Lorg/apache/commons/collections4/Bag;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/collections4/Bag;->remove(Ljava/lang/Object;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public uniqueSet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lorg/apache/commons/collections4/bag/SynchronizedBag;, "Lorg/apache/commons/collections4/bag/SynchronizedBag<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/SynchronizedBag;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/SynchronizedBag;->getBag()Lorg/apache/commons/collections4/Bag;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections4/Bag;->uniqueSet()Ljava/util/Set;

    move-result-object v1

    .line 124
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    new-instance v2, Lorg/apache/commons/collections4/bag/SynchronizedBag$SynchronizedBagSet;

    iget-object v3, p0, Lorg/apache/commons/collections4/bag/SynchronizedBag;->lock:Ljava/lang/Object;

    invoke-direct {v2, p0, v1, v3}, Lorg/apache/commons/collections4/bag/SynchronizedBag$SynchronizedBagSet;-><init>(Lorg/apache/commons/collections4/bag/SynchronizedBag;Ljava/util/Set;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v2

    .line 125
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
