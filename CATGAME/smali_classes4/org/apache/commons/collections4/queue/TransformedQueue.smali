.class public Lorg/apache/commons/collections4/queue/TransformedQueue;
.super Lorg/apache/commons/collections4/collection/TransformedCollection;
.source "TransformedQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/TransformedCollection<",
        "TE;>;",
        "Ljava/util/Queue<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6da650b15e174a41L


# direct methods
.method protected constructor <init>(Ljava/util/Queue;Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/apache/commons/collections4/queue/TransformedQueue;, "Lorg/apache/commons/collections4/queue/TransformedQueue<TE;>;"
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    .local p2, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/collection/TransformedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;)V

    .line 102
    return-void
.end method

.method public static transformedQueue(Ljava/util/Queue;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/queue/TransformedQueue;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Lorg/apache/commons/collections4/queue/TransformedQueue<",
            "TE;>;"
        }
    .end annotation

    .line 77
    .local p0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/queue/TransformedQueue;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/queue/TransformedQueue;-><init>(Ljava/util/Queue;Lorg/apache/commons/collections4/Transformer;)V

    .line 78
    .local v0, "decorated":Lorg/apache/commons/collections4/queue/TransformedQueue;, "Lorg/apache/commons/collections4/queue/TransformedQueue<TE;>;"
    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 80
    invoke-interface {p0}, Ljava/util/Queue;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 81
    .local v1, "values":[Ljava/lang/Object;, "[TE;"
    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    .line 82
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 83
    .local v4, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0}, Lorg/apache/commons/collections4/queue/TransformedQueue;->decorated()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {p1, v4}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v4    # "value":Ljava/lang/Object;, "TE;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "values":[Ljava/lang/Object;, "[TE;"
    :cond_0
    return-object v0
.end method

.method public static transformingQueue(Ljava/util/Queue;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/queue/TransformedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Lorg/apache/commons/collections4/queue/TransformedQueue<",
            "TE;>;"
        }
    .end annotation

    .line 56
    .local p0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/queue/TransformedQueue;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/queue/TransformedQueue;-><init>(Ljava/util/Queue;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lorg/apache/commons/collections4/queue/TransformedQueue;, "Lorg/apache/commons/collections4/queue/TransformedQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/TransformedQueue;->getQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lorg/apache/commons/collections4/queue/TransformedQueue;, "Lorg/apache/commons/collections4/queue/TransformedQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/TransformedQueue;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 117
    .local p0, "this":Lorg/apache/commons/collections4/queue/TransformedQueue;, "Lorg/apache/commons/collections4/queue/TransformedQueue<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/TransformedQueue;->getQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/queue/TransformedQueue;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lorg/apache/commons/collections4/queue/TransformedQueue;, "Lorg/apache/commons/collections4/queue/TransformedQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/TransformedQueue;->getQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lorg/apache/commons/collections4/queue/TransformedQueue;, "Lorg/apache/commons/collections4/queue/TransformedQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/TransformedQueue;->getQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lorg/apache/commons/collections4/queue/TransformedQueue;, "Lorg/apache/commons/collections4/queue/TransformedQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/TransformedQueue;->getQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
