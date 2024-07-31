.class public Lorg/apache/commons/collections4/iterators/IteratorChain;
.super Ljava/lang/Object;
.source "IteratorChain.java"

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
.field private currentIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field private isLocked:Z

.field private final iteratorChain:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/util/Iterator<",
            "+TE;>;>;"
        }
    .end annotation
.end field

.field private lastUsedIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    .local p0, "this":Lorg/apache/commons/collections4/iterators/IteratorChain;, "Lorg/apache/commons/collections4/iterators/IteratorChain<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 62
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->isLocked:Z

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/Iterator<",
            "+TE;>;>;)V"
        }
    .end annotation

    .line 144
    .local p0, "this":Lorg/apache/commons/collections4/iterators/IteratorChain;, "Lorg/apache/commons/collections4/iterators/IteratorChain<TE;>;"
    .local p1, "iteratorChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Iterator<+TE;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 62
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->isLocked:Z

    .line 145
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    .line 146
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    .line 147
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 95
    .local p0, "this":Lorg/apache/commons/collections4/iterators/IteratorChain;, "Lorg/apache/commons/collections4/iterators/IteratorChain<TE;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 62
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->isLocked:Z

    .line 96
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 110
    .local p0, "this":Lorg/apache/commons/collections4/iterators/IteratorChain;, "Lorg/apache/commons/collections4/iterators/IteratorChain<TE;>;"
    .local p1, "first":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    .local p2, "second":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 62
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->isLocked:Z

    .line 111
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    .line 112
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    .line 113
    return-void
.end method

.method public varargs constructor <init>([Ljava/util/Iterator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/apache/commons/collections4/iterators/IteratorChain;, "Lorg/apache/commons/collections4/iterators/IteratorChain<TE;>;"
    .local p1, "iteratorChain":[Ljava/util/Iterator;, "[Ljava/util/Iterator<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 62
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->isLocked:Z

    .line 126
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 127
    .local v2, "element":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    .line 126
    .end local v2    # "element":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method

.method private checkLocked()V
    .locals 2

    .line 190
    .local p0, "this":Lorg/apache/commons/collections4/iterators/IteratorChain;, "Lorg/apache/commons/collections4/iterators/IteratorChain<TE;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->isLocked:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 194
    return-void

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IteratorChain cannot be changed after the first use of a method from the Iterator interface"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private lockChain()V
    .locals 1

    .line 201
    .local p0, "this":Lorg/apache/commons/collections4/iterators/IteratorChain;, "Lorg/apache/commons/collections4/iterators/IteratorChain<TE;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->isLocked:Z

    if-nez v0, :cond_0

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->isLocked:Z

    .line 204
    :cond_0
    return-void
.end method


# virtual methods
.method public addIterator(Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 159
    .local p0, "this":Lorg/apache/commons/collections4/iterators/IteratorChain;, "Lorg/apache/commons/collections4/iterators/IteratorChain<TE;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/IteratorChain;->checkLocked()V

    .line 160
    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 164
    return-void

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Iterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 235
    .local p0, "this":Lorg/apache/commons/collections4/iterators/IteratorChain;, "Lorg/apache/commons/collections4/iterators/IteratorChain<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/IteratorChain;->lockChain()V

    .line 236
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/IteratorChain;->updateCurrentIterator()V

    .line 237
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 239
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .line 183
    .local p0, "this":Lorg/apache/commons/collections4/iterators/IteratorChain;, "Lorg/apache/commons/collections4/iterators/IteratorChain<TE;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->isLocked:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 251
    .local p0, "this":Lorg/apache/commons/collections4/iterators/IteratorChain;, "Lorg/apache/commons/collections4/iterators/IteratorChain<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/IteratorChain;->lockChain()V

    .line 252
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/IteratorChain;->updateCurrentIterator()V

    .line 253
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 255
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 273
    .local p0, "this":Lorg/apache/commons/collections4/iterators/IteratorChain;, "Lorg/apache/commons/collections4/iterators/IteratorChain<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/IteratorChain;->lockChain()V

    .line 274
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/IteratorChain;->updateCurrentIterator()V

    .line 277
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 278
    return-void
.end method

.method public size()I
    .locals 1

    .line 172
    .local p0, "this":Lorg/apache/commons/collections4/iterators/IteratorChain;, "Lorg/apache/commons/collections4/iterators/IteratorChain<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method protected updateCurrentIterator()V
    .locals 1

    .line 211
    .local p0, "this":Lorg/apache/commons/collections4/iterators/IteratorChain;, "Lorg/apache/commons/collections4/iterators/IteratorChain<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyIterator;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 219
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 222
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 223
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->iteratorChain:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    goto :goto_1

    .line 225
    :cond_2
    return-void
.end method
