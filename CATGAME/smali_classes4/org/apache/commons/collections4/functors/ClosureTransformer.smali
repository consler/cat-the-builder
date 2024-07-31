.class public Lorg/apache/commons/collections4/functors/ClosureTransformer;
.super Ljava/lang/Object;
.source "ClosureTransformer.java"

# interfaces
.implements Lorg/apache/commons/collections4/Transformer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Transformer<",
        "TT;TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6a3db1ca1a06d46L


# instance fields
.field private final iClosure:Lorg/apache/commons/collections4/Closure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Closure<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/Closure;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Closure<",
            "-TT;>;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/apache/commons/collections4/functors/ClosureTransformer;, "Lorg/apache/commons/collections4/functors/ClosureTransformer<TT;>;"
    .local p1, "closure":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/ClosureTransformer;->iClosure:Lorg/apache/commons/collections4/Closure;

    .line 62
    return-void
.end method

.method public static closureTransformer(Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Transformer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Closure<",
            "-TT;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TT;TT;>;"
        }
    .end annotation

    .line 47
    .local p0, "closure":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TT;>;"
    if-eqz p0, :cond_0

    .line 50
    new-instance v0, Lorg/apache/commons/collections4/functors/ClosureTransformer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/ClosureTransformer;-><init>(Lorg/apache/commons/collections4/Closure;)V

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Closure must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getClosure()Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Closure<",
            "-TT;>;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/apache/commons/collections4/functors/ClosureTransformer;, "Lorg/apache/commons/collections4/functors/ClosureTransformer<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/ClosureTransformer;->iClosure:Lorg/apache/commons/collections4/Closure;

    return-object v0
.end method

.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lorg/apache/commons/collections4/functors/ClosureTransformer;, "Lorg/apache/commons/collections4/functors/ClosureTransformer<TT;>;"
    .local p1, "input":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/ClosureTransformer;->iClosure:Lorg/apache/commons/collections4/Closure;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Closure;->execute(Ljava/lang/Object;)V

    .line 73
    return-object p1
.end method
