.class public abstract Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator;
.super Ljava/lang/Object;
.source "AbstractUntypedIteratorDecorator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TO;>;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TI;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TI;>;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator<TI;TO;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TI;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_0

    .line 45
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator;->iterator:Ljava/util/Iterator;

    .line 46
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Iterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected getIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TI;>;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator<TI;TO;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 59
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator<TI;TO;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .line 64
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator;, "Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator<TI;TO;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 65
    return-void
.end method
