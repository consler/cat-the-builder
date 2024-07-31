.class public Lorg/apache/commons/collections4/iterators/ReverseListIterator;
.super Ljava/lang/Object;
.source "ReverseListIterator.java"

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


# instance fields
.field private iterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "TE;>;"
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

.field private validForUpdate:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ReverseListIterator;, "Lorg/apache/commons/collections4/iterators/ReverseListIterator<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->validForUpdate:Z

    .line 55
    if-eqz p1, :cond_0

    .line 58
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->list:Ljava/util/List;

    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    .line 60
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "List must not be null."

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

    .line 169
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ReverseListIterator;, "Lorg/apache/commons/collections4/iterators/ReverseListIterator<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->validForUpdate:Z

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->validForUpdate:Z

    .line 173
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 175
    return-void

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add to list until next() or previous() called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 70
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ReverseListIterator;, "Lorg/apache/commons/collections4/iterators/ReverseListIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 103
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ReverseListIterator;, "Lorg/apache/commons/collections4/iterators/ReverseListIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ReverseListIterator;, "Lorg/apache/commons/collections4/iterators/ReverseListIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, "obj":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->validForUpdate:Z

    .line 83
    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 93
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ReverseListIterator;, "Lorg/apache/commons/collections4/iterators/ReverseListIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ReverseListIterator;, "Lorg/apache/commons/collections4/iterators/ReverseListIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 115
    .local v0, "obj":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->validForUpdate:Z

    .line 116
    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 126
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ReverseListIterator;, "Lorg/apache/commons/collections4/iterators/ReverseListIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 2

    .line 137
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ReverseListIterator;, "Lorg/apache/commons/collections4/iterators/ReverseListIterator<TE;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->validForUpdate:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 141
    return-void

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot remove from list until next() or previous() called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 2

    .line 183
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ReverseListIterator;, "Lorg/apache/commons/collections4/iterators/ReverseListIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    .line 184
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 152
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ReverseListIterator;, "Lorg/apache/commons/collections4/iterators/ReverseListIterator<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->validForUpdate:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 156
    return-void

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set to list until next() or previous() called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
