.class public Lorg/apache/commons/collections/iterators/ObjectGraphIterator;
.super Ljava/lang/Object;
.source "ObjectGraphIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field protected currentIterator:Ljava/util/Iterator;

.field protected currentValue:Ljava/lang/Object;

.field protected hasNext:Z

.field protected lastUsedIterator:Ljava/util/Iterator;

.field protected root:Ljava/lang/Object;

.field protected final stack:Lorg/apache/commons/collections/ArrayStack;

.field protected transformer:Lorg/apache/commons/collections/Transformer;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/collections/Transformer;)V
    .locals 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lorg/apache/commons/collections/ArrayStack;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/ArrayStack;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->stack:Lorg/apache/commons/collections/ArrayStack;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    .line 108
    instance-of v0, p1, Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 109
    check-cast p1, Ljava/util/Iterator;

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    goto :goto_0

    .line 111
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->root:Ljava/lang/Object;

    .line 113
    :goto_0
    iput-object p2, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 2

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lorg/apache/commons/collections/ArrayStack;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/ArrayStack;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->stack:Lorg/apache/commons/collections/ArrayStack;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    .line 128
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    const/4 p1, 0x0

    .line 129
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    return-void
.end method


# virtual methods
.method protected findNext(Ljava/lang/Object;)V
    .locals 1

    .line 162
    instance-of v0, p1, Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 164
    check-cast p1, Ljava/util/Iterator;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->findNextByIterator(Ljava/util/Iterator;)V

    goto :goto_0

    .line 167
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentValue:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 168
    iput-boolean p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    :goto_0
    return-void
.end method

.method protected findNextByIterator(Ljava/util/Iterator;)V
    .locals 2

    .line 178
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    if-eq p1, v0, :cond_1

    if-eqz v0, :cond_0

    .line 181
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->stack:Lorg/apache/commons/collections/ArrayStack;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/ArrayStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    .line 186
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    if-nez p1, :cond_3

    .line 187
    iget-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 188
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    if-eqz v0, :cond_2

    .line 189
    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 191
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->findNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 193
    :cond_3
    iget-boolean p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    if-eqz p1, :cond_4

    goto :goto_1

    .line 195
    :cond_4
    iget-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->stack:Lorg/apache/commons/collections/ArrayStack;

    invoke-virtual {p1}, Lorg/apache/commons/collections/ArrayStack;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 199
    :cond_5
    iget-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->stack:Lorg/apache/commons/collections/ArrayStack;

    invoke-virtual {p1}, Lorg/apache/commons/collections/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Iterator;

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    .line 200
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->findNextByIterator(Ljava/util/Iterator;)V

    :goto_1
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 211
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->updateCurrentIterator()V

    .line 212
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 222
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->updateCurrentIterator()V

    .line 223
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->lastUsedIterator:Ljava/util/Iterator;

    .line 227
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentValue:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 228
    iput-object v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentValue:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 229
    iput-boolean v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    return-object v0

    .line 224
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 247
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->lastUsedIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 250
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->lastUsedIterator:Ljava/util/Iterator;

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

    .line 137
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    if-nez v0, :cond_3

    .line 141
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->root:Ljava/lang/Object;

    if-nez v0, :cond_1

    goto :goto_1

    .line 144
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    if-nez v1, :cond_2

    .line 145
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->findNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 147
    :cond_2
    invoke-interface {v1, v0}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->findNext(Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->root:Ljava/lang/Object;

    goto :goto_1

    .line 152
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->findNextByIterator(Ljava/util/Iterator;)V

    :goto_1
    return-void
.end method
