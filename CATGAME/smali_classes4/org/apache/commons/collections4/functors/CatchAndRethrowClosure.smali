.class public abstract Lorg/apache/commons/collections4/functors/CatchAndRethrowClosure;
.super Ljava/lang/Object;
.source "CatchAndRethrowClosure.java"

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    .local p0, "this":Lorg/apache/commons/collections4/functors/CatchAndRethrowClosure;, "Lorg/apache/commons/collections4/functors/CatchAndRethrowClosure<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/apache/commons/collections4/functors/CatchAndRethrowClosure;, "Lorg/apache/commons/collections4/functors/CatchAndRethrowClosure<TE;>;"
    .local p1, "input":Ljava/lang/Object;, "TE;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/functors/CatchAndRethrowClosure;->executeAndThrow(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    nop

    .line 66
    return-void

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lorg/apache/commons/collections4/FunctorException;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 61
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "ex":Ljava/lang/RuntimeException;
    throw v0
.end method

.method protected abstract executeAndThrow(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
