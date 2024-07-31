.class public Lorg/apache/commons/collections4/iterators/TransformIterator;
.super Ljava/lang/Object;
.source "TransformIterator.java"

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
.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TI;>;"
        }
    .end annotation
.end field

.field private transformer:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    .local p0, "this":Lorg/apache/commons/collections4/iterators/TransformIterator;, "Lorg/apache/commons/collections4/iterators/TransformIterator<TI;TO;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TI;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/apache/commons/collections4/iterators/TransformIterator;, "Lorg/apache/commons/collections4/iterators/TransformIterator<TI;TO;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TI;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TI;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/apache/commons/collections4/iterators/TransformIterator;, "Lorg/apache/commons/collections4/iterators/TransformIterator<TI;TO;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TI;>;"
    .local p2, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    .line 68
    iput-object p2, p0, Lorg/apache/commons/collections4/iterators/TransformIterator;->transformer:Lorg/apache/commons/collections4/Transformer;

    .line 69
    return-void
.end method


# virtual methods
.method public getIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+TI;>;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/apache/commons/collections4/iterators/TransformIterator;, "Lorg/apache/commons/collections4/iterators/TransformIterator<TI;TO;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public getTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lorg/apache/commons/collections4/iterators/TransformIterator;, "Lorg/apache/commons/collections4/iterators/TransformIterator<TI;TO;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/TransformIterator;->transformer:Lorg/apache/commons/collections4/Transformer;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 74
    .local p0, "this":Lorg/apache/commons/collections4/iterators/TransformIterator;, "Lorg/apache/commons/collections4/iterators/TransformIterator<TI;TO;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lorg/apache/commons/collections4/iterators/TransformIterator;, "Lorg/apache/commons/collections4/iterators/TransformIterator<TI;TO;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/iterators/TransformIterator;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 92
    .local p0, "this":Lorg/apache/commons/collections4/iterators/TransformIterator;, "Lorg/apache/commons/collections4/iterators/TransformIterator<TI;TO;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 93
    return-void
.end method

.method public setIterator(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TI;>;)V"
        }
    .end annotation

    .line 112
    .local p0, "this":Lorg/apache/commons/collections4/iterators/TransformIterator;, "Lorg/apache/commons/collections4/iterators/TransformIterator<TI;TO;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TI;>;"
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    .line 113
    return-void
.end method

.method public setTransformer(Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    .line 132
    .local p0, "this":Lorg/apache/commons/collections4/iterators/TransformIterator;, "Lorg/apache/commons/collections4/iterators/TransformIterator<TI;TO;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/TransformIterator;->transformer:Lorg/apache/commons/collections4/Transformer;

    .line 133
    return-void
.end method

.method protected transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TO;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lorg/apache/commons/collections4/iterators/TransformIterator;, "Lorg/apache/commons/collections4/iterators/TransformIterator<TI;TO;>;"
    .local p1, "source":Ljava/lang/Object;, "TI;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/TransformIterator;->transformer:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
