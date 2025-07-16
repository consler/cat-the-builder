.class public Lorg/apache/commons/collections4/iterators/PushbackIterator;
.super Ljava/lang/Object;
.source "PushbackIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final items:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/PushbackIterator;->items:Ljava/util/Deque;

    .line 75
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/PushbackIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method public static pushbackIterator(Ljava/util/Iterator;)Lorg/apache/commons/collections4/iterators/PushbackIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/iterators/PushbackIterator<",
            "TE;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 58
    instance-of v0, p0, Lorg/apache/commons/collections4/iterators/PushbackIterator;

    if-eqz v0, :cond_0

    .line 60
    check-cast p0, Lorg/apache/commons/collections4/iterators/PushbackIterator;

    return-object p0

    .line 63
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/PushbackIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/PushbackIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 56
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Iterator must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PushbackIterator;->items:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PushbackIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PushbackIterator;->items:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PushbackIterator;->items:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PushbackIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public pushback(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PushbackIterator;->items:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public remove()V
    .locals 1

    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
