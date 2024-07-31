.class public Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;
.super Ljava/lang/Object;
.source "AbstractOrderedMapIteratorDecorator.java"

# interfaces
.implements Lorg/apache/commons/collections4/OrderedMapIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/OrderedMapIterator<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final iterator:Lorg/apache/commons/collections4/OrderedMapIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/OrderedMapIterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator<TK;TV;>;"
    .local p1, "iterator":Lorg/apache/commons/collections4/OrderedMapIterator;, "Lorg/apache/commons/collections4/OrderedMapIterator<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-eqz p1, :cond_0

    .line 47
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    .line 48
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OrderedMapIterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getOrderedMapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 64
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 76
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 88
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->remove()V

    .line 89
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator<TK;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/OrderedMapIterator;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
