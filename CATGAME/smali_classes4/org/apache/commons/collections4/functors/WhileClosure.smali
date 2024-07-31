.class public Lorg/apache/commons/collections4/functors/WhileClosure;
.super Ljava/lang/Object;
.source "WhileClosure.java"

# interfaces
.implements Lorg/apache/commons/collections4/Closure;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Closure<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final iClosure:Lorg/apache/commons/collections4/Closure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private final iDoLoop:Z

.field private final iPredicate:Lorg/apache/commons/collections4/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;Z)V
    .locals 0
    .param p3, "doLoop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;Z)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/apache/commons/collections4/functors/WhileClosure;, "Lorg/apache/commons/collections4/functors/WhileClosure<TE;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TE;>;"
    .local p2, "closure":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/WhileClosure;->iPredicate:Lorg/apache/commons/collections4/Predicate;

    .line 75
    iput-object p2, p0, Lorg/apache/commons/collections4/functors/WhileClosure;->iClosure:Lorg/apache/commons/collections4/Closure;

    .line 76
    iput-boolean p3, p0, Lorg/apache/commons/collections4/functors/WhileClosure;->iDoLoop:Z

    .line 77
    return-void
.end method

.method public static whileClosure(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;Z)Lorg/apache/commons/collections4/Closure;
    .locals 2
    .param p2, "doLoop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;Z)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 55
    .local p0, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TE;>;"
    .local p1, "closure":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TE;>;"
    if-eqz p0, :cond_1

    .line 58
    if-eqz p1, :cond_0

    .line 61
    new-instance v0, Lorg/apache/commons/collections4/functors/WhileClosure;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/functors/WhileClosure;-><init>(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;Z)V

    return-object v0

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Closure must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Predicate must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/apache/commons/collections4/functors/WhileClosure;, "Lorg/apache/commons/collections4/functors/WhileClosure<TE;>;"
    .local p1, "input":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/functors/WhileClosure;->iDoLoop:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/WhileClosure;->iClosure:Lorg/apache/commons/collections4/Closure;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Closure;->execute(Ljava/lang/Object;)V

    .line 89
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/WhileClosure;->iPredicate:Lorg/apache/commons/collections4/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/WhileClosure;->iClosure:Lorg/apache/commons/collections4/Closure;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Closure;->execute(Ljava/lang/Object;)V

    goto :goto_0

    .line 92
    :cond_1
    return-void
.end method

.method public getClosure()Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/apache/commons/collections4/functors/WhileClosure;, "Lorg/apache/commons/collections4/functors/WhileClosure<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/WhileClosure;->iClosure:Lorg/apache/commons/collections4/Closure;

    return-object v0
.end method

.method public getPredicate()Lorg/apache/commons/collections4/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/apache/commons/collections4/functors/WhileClosure;, "Lorg/apache/commons/collections4/functors/WhileClosure<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/WhileClosure;->iPredicate:Lorg/apache/commons/collections4/Predicate;

    return-object v0
.end method

.method public isDoLoop()Z
    .locals 1

    .line 121
    .local p0, "this":Lorg/apache/commons/collections4/functors/WhileClosure;, "Lorg/apache/commons/collections4/functors/WhileClosure<TE;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/functors/WhileClosure;->iDoLoop:Z

    return v0
.end method
