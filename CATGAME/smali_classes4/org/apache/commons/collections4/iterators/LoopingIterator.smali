.class public Lorg/apache/commons/collections4/iterators/LoopingIterator;
.super Ljava/lang/Object;
.source "LoopingIterator.java"

# interfaces
.implements Lorg/apache/commons/collections4/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/ResettableIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+TE;>;"
        }
    .end annotation
.end field

.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lorg/apache/commons/collections4/iterators/LoopingIterator;, "Lorg/apache/commons/collections4/iterators/LoopingIterator<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-eqz p1, :cond_0

    .line 57
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/LoopingIterator;->collection:Ljava/util/Collection;

    .line 58
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/LoopingIterator;->reset()V

    .line 59
    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The collection must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 71
    .local p0, "this":Lorg/apache/commons/collections4/iterators/LoopingIterator;, "Lorg/apache/commons/collections4/iterators/LoopingIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/LoopingIterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 85
    .local p0, "this":Lorg/apache/commons/collections4/iterators/LoopingIterator;, "Lorg/apache/commons/collections4/iterators/LoopingIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/LoopingIterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/LoopingIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/LoopingIterator;->reset()V

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/LoopingIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 86
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "There are no elements for this iterator to loop on"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 108
    .local p0, "this":Lorg/apache/commons/collections4/iterators/LoopingIterator;, "Lorg/apache/commons/collections4/iterators/LoopingIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/LoopingIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 109
    return-void
.end method

.method public reset()V
    .locals 1

    .line 116
    .local p0, "this":Lorg/apache/commons/collections4/iterators/LoopingIterator;, "Lorg/apache/commons/collections4/iterators/LoopingIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/LoopingIterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/LoopingIterator;->iterator:Ljava/util/Iterator;

    .line 117
    return-void
.end method

.method public size()I
    .locals 1

    .line 125
    .local p0, "this":Lorg/apache/commons/collections4/iterators/LoopingIterator;, "Lorg/apache/commons/collections4/iterators/LoopingIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/LoopingIterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method
