.class public abstract Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;
.super Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;
.source "AbstractQueueDecorator.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator<",
        "TE;>;",
        "Ljava/util/Queue<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x247efb3deb433b45L


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 49
    .local p0, "this":Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;, "Lorg/apache/commons/collections4/queue/AbstractQueueDecorator<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;-><init>()V

    .line 50
    return-void
.end method

.method protected constructor <init>(Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "TE;>;)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;, "Lorg/apache/commons/collections4/queue/AbstractQueueDecorator<TE;>;"
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;-><init>(Ljava/util/Collection;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    .line 39
    .local p0, "this":Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;, "Lorg/apache/commons/collections4/queue/AbstractQueueDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;->decorated()Ljava/util/Queue;

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

    .line 69
    .local p0, "this":Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;, "Lorg/apache/commons/collections4/queue/AbstractQueueDecorator<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->decorated()Ljava/util/Collection;

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

    .line 91
    .local p0, "this":Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;, "Lorg/apache/commons/collections4/queue/AbstractQueueDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;->decorated()Ljava/util/Queue;

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

    .line 76
    .local p0, "this":Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;, "Lorg/apache/commons/collections4/queue/AbstractQueueDecorator<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;->decorated()Ljava/util/Queue;

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

    .line 86
    .local p0, "this":Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;, "Lorg/apache/commons/collections4/queue/AbstractQueueDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;->decorated()Ljava/util/Queue;

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

    .line 81
    .local p0, "this":Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;, "Lorg/apache/commons/collections4/queue/AbstractQueueDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;->decorated()Ljava/util/Queue;

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

    .line 96
    .local p0, "this":Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;, "Lorg/apache/commons/collections4/queue/AbstractQueueDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;->decorated()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
