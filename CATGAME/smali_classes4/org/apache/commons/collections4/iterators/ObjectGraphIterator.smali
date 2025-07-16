.class public Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;
.super Ljava/lang/Object;
.source "ObjectGraphIterator.java"

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

.field private currentValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private hasNext:Z

.field private lastUsedIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field private root:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/util/Iterator<",
            "+TE;>;>;"
        }
    .end annotation
.end field

.field private final transformer:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/collections4/Transformer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->stack:Ljava/util/Deque;

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->hasNext:Z

    .line 107
    instance-of v0, p1, Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 108
    check-cast p1, Ljava/util/Iterator;

    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    goto :goto_0

    .line 110
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->root:Ljava/lang/Object;

    .line 112
    :goto_0
    iput-object p2, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->transformer:Lorg/apache/commons/collections4/Transformer;

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->stack:Ljava/util/Deque;

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->hasNext:Z

    .line 127
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    const/4 p1, 0x0

    .line 128
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->transformer:Lorg/apache/commons/collections4/Transformer;

    return-void
.end method


# virtual methods
.method protected findNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 162
    instance-of v0, p1, Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 164
    check-cast p1, Ljava/util/Iterator;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->findNextByIterator(Ljava/util/Iterator;)V

    goto :goto_0

    .line 167
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->currentValue:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 168
    iput-boolean p1, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->hasNext:Z

    :goto_0
    return-void
.end method

.method protected findNextByIterator(Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    if-eq p1, v0, :cond_1

    if-eqz v0, :cond_0

    .line 181
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->stack:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 183
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    .line 186
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->hasNext:Z

    if-nez p1, :cond_3

    .line 187
    iget-object p1, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 188
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->transformer:Lorg/apache/commons/collections4/Transformer;

    if-eqz v0, :cond_2

    .line 189
    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 191
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->findNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 194
    :cond_3
    iget-boolean p1, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->hasNext:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->stack:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 196
    iget-object p1, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->stack:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Iterator;

    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    .line 197
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->findNextByIterator(Ljava/util/Iterator;)V

    :cond_4
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 209
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->updateCurrentIterator()V

    .line 210
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->hasNext:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->updateCurrentIterator()V

    .line 222
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->hasNext:Z

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->lastUsedIterator:Ljava/util/Iterator;

    .line 226
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->currentValue:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 227
    iput-object v1, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->currentValue:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 228
    iput-boolean v1, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->hasNext:Z

    return-object v0

    .line 223
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 247
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->lastUsedIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 250
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->lastUsedIterator:Ljava/util/Iterator;

    return-void

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator remove() cannot be called at this time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected updateCurrentIterator()V
    .locals 2

    .line 136
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->hasNext:Z

    if-eqz v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    if-nez v0, :cond_3

    .line 140
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->root:Ljava/lang/Object;

    if-nez v0, :cond_1

    goto :goto_1

    .line 143
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->transformer:Lorg/apache/commons/collections4/Transformer;

    if-nez v1, :cond_2

    .line 144
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->findNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    :cond_2
    invoke-interface {v1, v0}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->findNext(Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->root:Ljava/lang/Object;

    goto :goto_1

    .line 151
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/iterators/ObjectGraphIterator;->findNextByIterator(Ljava/util/Iterator;)V

    :goto_1
    return-void
.end method
