.class public Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;
.super Ljava/lang/Object;
.source "AbstractListIteratorDecorator.java"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field protected final iterator:Ljava/util/ListIterator;


# direct methods
.method public constructor <init>(Ljava/util/ListIterator;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 49
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;->iterator:Ljava/util/ListIterator;

    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ListIterator must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method protected getListIterator()Ljava/util/ListIterator;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;->iterator:Ljava/util/ListIterator;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
