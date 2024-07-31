.class public final Lio/reactivex/internal/operators/completable/CompletableUsing;
.super Lio/reactivex/Completable;
.source "CompletableUsing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableUsing$UsingObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Completable;"
    }
.end annotation


# instance fields
.field final completableFunction:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TR;+",
            "Lio/reactivex/CompletableSource;",
            ">;"
        }
    .end annotation
.end field

.field final disposer:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final eager:Z

.field final resourceSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lio/reactivex/functions/Function;Lio/reactivex/functions/Consumer;Z)V
    .locals 0
    .param p4, "eager"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TR;+",
            "Lio/reactivex/CompletableSource;",
            ">;",
            "Lio/reactivex/functions/Consumer<",
            "-TR;>;Z)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lio/reactivex/internal/operators/completable/CompletableUsing;, "Lio/reactivex/internal/operators/completable/CompletableUsing<TR;>;"
    .local p1, "resourceSupplier":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    .local p2, "completableFunction":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TR;+Lio/reactivex/CompletableSource;>;"
    .local p3, "disposer":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-TR;>;"
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    .line 37
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableUsing;->resourceSupplier:Ljava/util/concurrent/Callable;

    .line 38
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableUsing;->completableFunction:Lio/reactivex/functions/Function;

    .line 39
    iput-object p3, p0, Lio/reactivex/internal/operators/completable/CompletableUsing;->disposer:Lio/reactivex/functions/Consumer;

    .line 40
    iput-boolean p4, p0, Lio/reactivex/internal/operators/completable/CompletableUsing;->eager:Z

    .line 41
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 7
    .param p1, "observer"    # Lio/reactivex/CompletableObserver;

    .line 49
    .local p0, "this":Lio/reactivex/internal/operators/completable/CompletableUsing;, "Lio/reactivex/internal/operators/completable/CompletableUsing<TR;>;"
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableUsing;->resourceSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 54
    .local v1, "resource":Ljava/lang/Object;, "TR;"
    nop

    .line 59
    :try_start_1
    iget-object v2, p0, Lio/reactivex/internal/operators/completable/CompletableUsing;->completableFunction:Lio/reactivex/functions/Function;

    invoke-interface {v2, v1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The completableFunction returned a null CompletableSource"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/CompletableSource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 83
    .local v0, "source":Lio/reactivex/CompletableSource;
    nop

    .line 85
    new-instance v2, Lio/reactivex/internal/operators/completable/CompletableUsing$UsingObserver;

    iget-object v3, p0, Lio/reactivex/internal/operators/completable/CompletableUsing;->disposer:Lio/reactivex/functions/Consumer;

    iget-boolean v4, p0, Lio/reactivex/internal/operators/completable/CompletableUsing;->eager:Z

    invoke-direct {v2, p1, v1, v3, v4}, Lio/reactivex/internal/operators/completable/CompletableUsing$UsingObserver;-><init>(Lio/reactivex/CompletableObserver;Ljava/lang/Object;Lio/reactivex/functions/Consumer;Z)V

    invoke-interface {v0, v2}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    .line 86
    return-void

    .line 60
    .end local v0    # "source":Lio/reactivex/CompletableSource;
    :catchall_0
    move-exception v2

    .line 61
    .restart local v0    # "source":Lio/reactivex/CompletableSource;
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 62
    iget-boolean v3, p0, Lio/reactivex/internal/operators/completable/CompletableUsing;->eager:Z

    if-eqz v3, :cond_0

    .line 64
    :try_start_2
    iget-object v3, p0, Lio/reactivex/internal/operators/completable/CompletableUsing;->disposer:Lio/reactivex/functions/Consumer;

    invoke-interface {v3, v1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    goto :goto_0

    .line 65
    :catchall_1
    move-exception v3

    .line 66
    .local v3, "exc":Ljava/lang/Throwable;
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 67
    new-instance v4, Lio/reactivex/exceptions/CompositeException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-direct {v4, v5}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v4, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    .line 68
    return-void

    .line 72
    .end local v3    # "exc":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    invoke-static {v2, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    .line 74
    iget-boolean v3, p0, Lio/reactivex/internal/operators/completable/CompletableUsing;->eager:Z

    if-nez v3, :cond_1

    .line 76
    :try_start_3
    iget-object v3, p0, Lio/reactivex/internal/operators/completable/CompletableUsing;->disposer:Lio/reactivex/functions/Consumer;

    invoke-interface {v3, v1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 80
    goto :goto_1

    .line 77
    :catchall_2
    move-exception v3

    .line 78
    .restart local v3    # "exc":Ljava/lang/Throwable;
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 79
    invoke-static {v3}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 82
    .end local v3    # "exc":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    return-void

    .line 50
    .end local v0    # "source":Lio/reactivex/CompletableSource;
    .end local v1    # "resource":Ljava/lang/Object;, "TR;"
    .end local v2    # "ex":Ljava/lang/Throwable;
    :catchall_3
    move-exception v1

    .line 51
    .local v0, "resource":Ljava/lang/Object;, "TR;"
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 52
    invoke-static {v1, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    .line 53
    return-void
.end method
