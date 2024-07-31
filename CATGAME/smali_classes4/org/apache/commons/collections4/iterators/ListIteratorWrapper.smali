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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;, "Lorg/apache/commons/collections4/iterators/ListIteratorWrapper<TE;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->list:Ljava/util/List;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    .line 64
    iput v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    .line 79
    if-eqz p1, :cond_0

    .line 82
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    .line 83
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Iterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;, "Lorg/apache/commons/collections4/iterators/ListIteratorWrapper<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    .line 99
    check-cast v0, Ljava/util/ListIterator;

    .line 100
    .local v0, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 101
    return-void

    .line 103
    .end local v0    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ListIteratorWrapper does not support optional operations of ListIterator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 113
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;, "Lorg/apache/commons/collections4/iterators/ListIteratorWrapper<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v0, v0, Ljava/util/ListIterator;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 116
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;, "Lorg/apache/commons/collections4/iterators/ListIteratorWrapper<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    .line 127
    check-cast v0, Ljava/util/ListIterator;

    .line 128
    .local v0, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    return v1

    .line 130
    .end local v0    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;, "Lorg/apache/commons/collections4/iterators/ListIteratorWrapper<TE;>;"
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

    .line 146
    add-int/2addr v1, v3

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
    .local v0, "retval":Ljava/lang/Object;, "TE;"
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

    .line 155
    return-object v0
.end method

.method public nextIndex()I
    .locals 2

    .line 165
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;, "Lorg/apache/commons/collections4/iterators/ListIteratorWrapper<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    .line 166
    check-cast v0, Ljava/util/ListIterator;

    .line 167
    .local v0, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    return v1

    .line 169
    .end local v0    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;, "Lorg/apache/commons/collections4/iterators/ListIteratorWrapper<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    .line 182
    check-cast v0, Ljava/util/ListIterator;

    .line 183
    .local v0, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 186
    .end local v0    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    if-eqz v0, :cond_2

    .line 189
    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    const/4 v2, 0x1

    if-ne v1, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->removeState:Z

    .line 190
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->list:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;, "Lorg/apache/commons/collections4/iterators/ListIteratorWrapper<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    .line 201
    check-cast v0, Ljava/util/ListIterator;

    .line 202
    .local v0, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v1

    return v1

    .line 204
    .end local v0    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 214
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;, "Lorg/apache/commons/collections4/iterators/ListIteratorWrapper<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    .line 215
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 216
    return-void

    .line 218
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    .line 219
    .local v0, "removeIndex":I
    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    iget v2, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    if-ne v1, v2, :cond_1

    .line 220
    add-int/lit8 v0, v0, -0x1

    .line 222
    :cond_1
    iget-boolean v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->removeState:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    iget v4, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    sub-int/2addr v1, v4

    if-gt v1, v3, :cond_2

    .line 225
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 226
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 227
    iput v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    .line 228
    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    .line 229
    iput-boolean v2, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->removeState:Z

    .line 230
    return-void

    .line 223
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "Cannot remove element at index {0}."

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .locals 2

    .line 261
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;, "Lorg/apache/commons/collections4/iterators/ListIteratorWrapper<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_1

    .line 262
    check-cast v0, Ljava/util/ListIterator;

    .line 263
    .local v0, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v1

    if-ltz v1, :cond_0

    .line 264
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_0

    .line 266
    :cond_0
    return-void

    .line 268
    .end local v0    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->currentIndex:I

    .line 269
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;, "Lorg/apache/commons/collections4/iterators/ListIteratorWrapper<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    .line 244
    check-cast v0, Ljava/util/ListIterator;

    .line 245
    .local v0, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 246
    return-void

    .line 248
    .end local v0    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ListIteratorWrapper does not support optional operations of ListIterator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
