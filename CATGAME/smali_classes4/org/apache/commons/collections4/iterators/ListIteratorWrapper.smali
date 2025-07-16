.class public Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;
.super Ljava/lang/Object;
.source "ListIteratorWrapper.java"

# interfaces
.implements Lorg/apache/commons/collections4/ResettableListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/ResettableListIterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final CANNOT_REMOVE_MESSAGE:Ljava/lang/String; = "Cannot remove element at index {0}."

.field private static final UNSUPPORTED_OPERATION_MESSAGE:Ljava/lang/String; = "ListIteratorWrapper does not support optional operations of ListIterator."


# instance fields
.field private currentIndex:I

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field private removeState:Z

.field private wrappedIteratorIndex:I


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

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->list:Ljava/util/List;

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    .line 64
    iput v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    if-eqz p1, :cond_0

    .line 82
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    return-void

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Iterator must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    .line 99
    check-cast v0, Ljava/util/ListIterator;

    .line 100
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ListIteratorWrapper does not support optional operations of ListIterator."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasNext()Z
    .locals 2

    .line 113
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v0, v0, Ljava/util/ListIterator;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 114
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 2

    .line 126
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    .line 127
    check-cast v0, Ljava/util/ListIterator;

    .line 128
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0

    .line 130
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 145
    :cond_0
    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    iget v2, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    add-int/2addr v1, v3

    .line 146
    iput v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    .line 147
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->list:Ljava/util/List;

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 150
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    .line 153
    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    .line 154
    iput-boolean v3, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->removeState:Z

    return-object v0
.end method

.method public nextIndex()I
    .locals 2

    .line 165
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    .line 166
    check-cast v0, Ljava/util/ListIterator;

    .line 167
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0

    .line 169
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    .line 182
    check-cast v0, Ljava/util/ListIterator;

    .line 183
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 186
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    if-eqz v0, :cond_2

    .line 189
    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    const/4 v2, 0x1

    if-ne v1, v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->removeState:Z

    .line 190
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->list:Ljava/util/List;

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 187
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 2

    .line 200
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    .line 201
    check-cast v0, Ljava/util/ListIterator;

    .line 202
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0

    .line 204
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    .line 215
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 218
    :cond_0
    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    .line 219
    iget v2, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    if-ne v1, v2, :cond_1

    add-int/lit8 v3, v1, -0x1

    goto :goto_0

    :cond_1
    move v3, v1

    .line 222
    :goto_0
    iget-boolean v4, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->removeState:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    sub-int/2addr v2, v1

    if-gt v2, v6, :cond_2

    .line 225
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 226
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->list:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 227
    iput v3, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    .line 228
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    sub-int/2addr v0, v6

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    .line 229
    iput-boolean v5, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->removeState:Z

    return-void

    .line 223
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Cannot remove element at index {0}."

    invoke-static {v2, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 2

    .line 261
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_1

    .line 262
    check-cast v0, Ljava/util/ListIterator;

    .line 263
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v1

    if-ltz v1, :cond_0

    .line 264
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 268
    iput v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    .line 244
    check-cast v0, Ljava/util/ListIterator;

    .line 245
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void

    .line 248
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ListIteratorWrapper does not support optional operations of ListIterator."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
