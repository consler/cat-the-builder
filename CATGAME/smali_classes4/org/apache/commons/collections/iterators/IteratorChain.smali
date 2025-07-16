.class public Lorg/apache/commons/collections/iterators/IteratorChain;
.super Ljava/lang/Object;
.source "IteratorChain.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field protected currentIterator:Ljava/util/Iterator;

.field protected currentIteratorIndex:I

.field protected isLocked:Z

.field protected final iteratorChain:Ljava/util/List;

.field protected lastUsedIterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIteratorIndex:I

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 64
    iput-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 69
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIteratorIndex:I

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 64
    iput-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 69
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    .line 131
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 133
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIteratorIndex:I

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 64
    iput-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 69
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    .line 90
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIteratorIndex:I

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 64
    iput-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 69
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    .line 103
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    .line 104
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    return-void
.end method

.method public constructor <init>([Ljava/util/Iterator;)V
    .locals 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIteratorIndex:I

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 64
    iput-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 69
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    .line 116
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 117
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkLocked()V
    .locals 2

    .line 203
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IteratorChain cannot be changed after the first use of a method from the Iterator interface"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private lockChain()V
    .locals 1

    .line 213
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addIterator(Ljava/util/Iterator;)V
    .locals 1

    .line 146
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/IteratorChain;->checkLocked()V

    if-eqz p1, :cond_0

    .line 150
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 148
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Iterator must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getIterators()Ljava/util/List;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/commons/collections/list/UnmodifiableList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 247
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/IteratorChain;->lockChain()V

    .line 248
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/IteratorChain;->updateCurrentIterator()V

    .line 249
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 251
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 261
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/IteratorChain;->lockChain()V

    .line 262
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/IteratorChain;->updateCurrentIterator()V

    .line 263
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 265
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 283
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/IteratorChain;->lockChain()V

    .line 284
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/IteratorChain;->updateCurrentIterator()V

    .line 287
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method

.method public setIterator(ILjava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/IteratorChain;->checkLocked()V

    if-eqz p2, :cond_0

    .line 167
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 165
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Iterator must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected updateCurrentIterator()V
    .locals 2

    .line 223
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    if-nez v0, :cond_1

    .line 224
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 231
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 234
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIteratorIndex:I

    iget-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 235
    iget v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIteratorIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIteratorIndex:I

    .line 236
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    goto :goto_1

    :cond_2
    return-void
.end method
