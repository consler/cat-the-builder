.class public Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;
.super Ljava/lang/Object;
.source "AbstractListIteratorDecorator.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ListIterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "TE;>;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator<TE;>;"
    .local p1, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_0

    .line 45
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;->iterator:Ljava/util/ListIterator;

    .line 46
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ListIterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 110
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method protected getListIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;->iterator:Ljava/util/ListIterator;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 62
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 80
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 74
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 92
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .line 98
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 99
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 104
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 105
    return-void
.end method
