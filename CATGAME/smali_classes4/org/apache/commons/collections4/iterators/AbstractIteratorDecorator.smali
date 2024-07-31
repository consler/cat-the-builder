.class public abstract Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;
.super Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator;
.source "AbstractIteratorDecorator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator<",
        "TE;TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TE;>;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator<TE;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    .line 39
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 44
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
