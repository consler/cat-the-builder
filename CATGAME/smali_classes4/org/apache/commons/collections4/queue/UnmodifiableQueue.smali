.class public final Lorg/apache/commons/collections4/queue/UnmodifiableQueue;
.super Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;
.source "UnmodifiableQueue.java"

# interfaces
.implements Lorg/apache/commons/collections4/Unmodifiable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/queue/AbstractQueueDecorator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x196ff117693f844dL


# direct methods
.method private constructor <init>(Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "+TE;>;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/apache/commons/collections4/queue/UnmodifiableQueue;, "Lorg/apache/commons/collections4/queue/UnmodifiableQueue<TE;>;"
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<+TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;-><init>(Ljava/util/Queue;)V

    .line 75
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 98
    .local p0, "this":Lorg/apache/commons/collections4/queue/UnmodifiableQueue;, "Lorg/apache/commons/collections4/queue/UnmodifiableQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 99
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/queue/UnmodifiableQueue;->setCollection(Ljava/util/Collection;)V

    .line 100
    return-void
.end method

.method public static unmodifiableQueue(Ljava/util/Queue;)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue<",
            "+TE;>;)",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 57
    .local p0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<+TE;>;"
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    .line 59
    move-object v0, p0

    .line 60
    .local v0, "tmpQueue":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    return-object v0

    .line 62
    .end local v0    # "tmpQueue":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/queue/UnmodifiableQueue;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/queue/UnmodifiableQueue;-><init>(Ljava/util/Queue;)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    .local p0, "this":Lorg/apache/commons/collections4/queue/UnmodifiableQueue;, "Lorg/apache/commons/collections4/queue/UnmodifiableQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 86
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/UnmodifiableQueue;->decorated()Ljava/util/Queue;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 87
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 110
    .local p0, "this":Lorg/apache/commons/collections4/queue/UnmodifiableQueue;, "Lorg/apache/commons/collections4/queue/UnmodifiableQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 115
    .local p0, "this":Lorg/apache/commons/collections4/queue/UnmodifiableQueue;, "Lorg/apache/commons/collections4/queue/UnmodifiableQueue<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 120
    .local p0, "this":Lorg/apache/commons/collections4/queue/UnmodifiableQueue;, "Lorg/apache/commons/collections4/queue/UnmodifiableQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lorg/apache/commons/collections4/queue/UnmodifiableQueue;, "Lorg/apache/commons/collections4/queue/UnmodifiableQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/UnmodifiableQueue;->decorated()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableIterator;->unmodifiableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

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

    .line 150
    .local p0, "this":Lorg/apache/commons/collections4/queue/UnmodifiableQueue;, "Lorg/apache/commons/collections4/queue/UnmodifiableQueue<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/apache/commons/collections4/queue/UnmodifiableQueue;, "Lorg/apache/commons/collections4/queue/UnmodifiableQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 160
    .local p0, "this":Lorg/apache/commons/collections4/queue/UnmodifiableQueue;, "Lorg/apache/commons/collections4/queue/UnmodifiableQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 125
    .local p0, "this":Lorg/apache/commons/collections4/queue/UnmodifiableQueue;, "Lorg/apache/commons/collections4/queue/UnmodifiableQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 138
    .local p0, "this":Lorg/apache/commons/collections4/queue/UnmodifiableQueue;, "Lorg/apache/commons/collections4/queue/UnmodifiableQueue<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 133
    .local p0, "this":Lorg/apache/commons/collections4/queue/UnmodifiableQueue;, "Lorg/apache/commons/collections4/queue/UnmodifiableQueue<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 143
    .local p0, "this":Lorg/apache/commons/collections4/queue/UnmodifiableQueue;, "Lorg/apache/commons/collections4/queue/UnmodifiableQueue<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
