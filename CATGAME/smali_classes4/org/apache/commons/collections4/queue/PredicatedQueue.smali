.class public Lorg/apache/commons/collections4/queue/PredicatedQueue;
.super Lorg/apache/commons/collections4/collection/PredicatedCollection;
.source "PredicatedQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/PredicatedCollection<",
        "TE;>;",
        "Ljava/util/Queue<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x20064628e5ad729dL


# direct methods
.method protected constructor <init>(Ljava/util/Queue;Lorg/apache/commons/collections4/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/apache/commons/collections4/queue/PredicatedQueue;, "Lorg/apache/commons/collections4/queue/PredicatedQueue<TE;>;"
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    .local p2, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/collection/PredicatedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/Predicate;)V

    .line 77
    return-void
.end method

.method public static predicatedQueue(Ljava/util/Queue;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/queue/PredicatedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/queue/PredicatedQueue<",
            "TE;>;"
        }
    .end annotation

    .line 60
    .local p0, "Queue":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/queue/PredicatedQueue;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/queue/PredicatedQueue;-><init>(Ljava/util/Queue;Lorg/apache/commons/collections4/Predicate;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    .line 40
    .local p0, "this":Lorg/apache/commons/collections4/queue/PredicatedQueue;, "Lorg/apache/commons/collections4/queue/PredicatedQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/PredicatedQueue;->decorated()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/apache/commons/collections4/queue/PredicatedQueue;, "Lorg/apache/commons/collections4/queue/PredicatedQueue<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/collection/PredicatedCollection;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 117
    .local p0, "this":Lorg/apache/commons/collections4/queue/PredicatedQueue;, "Lorg/apache/commons/collections4/queue/PredicatedQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/PredicatedQueue;->decorated()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/apache/commons/collections4/queue/PredicatedQueue;, "Lorg/apache/commons/collections4/queue/PredicatedQueue<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/queue/PredicatedQueue;->validate(Ljava/lang/Object;)V

    .line 102
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/PredicatedQueue;->decorated()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

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

    .line 112
    .local p0, "this":Lorg/apache/commons/collections4/queue/PredicatedQueue;, "Lorg/apache/commons/collections4/queue/PredicatedQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/PredicatedQueue;->decorated()Ljava/util/Queue;

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

    .line 107
    .local p0, "this":Lorg/apache/commons/collections4/queue/PredicatedQueue;, "Lorg/apache/commons/collections4/queue/PredicatedQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/PredicatedQueue;->decorated()Ljava/util/Queue;

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

    .line 122
    .local p0, "this":Lorg/apache/commons/collections4/queue/PredicatedQueue;, "Lorg/apache/commons/collections4/queue/PredicatedQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/PredicatedQueue;->decorated()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
