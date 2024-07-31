.class Lio/reactivex/Scheduler$PeriodicDirectTask;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/Scheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PeriodicDirectTask"
.end annotation


# instance fields
.field volatile disposed:Z

.field final run:Ljava/lang/Runnable;

.field final worker:Lio/reactivex/Scheduler$Worker;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lio/reactivex/Scheduler$Worker;)V
    .locals 0
    .param p1, "run"    # Ljava/lang/Runnable;
    .param p2, "worker"    # Lio/reactivex/Scheduler$Worker;

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    iput-object p1, p0, Lio/reactivex/Scheduler$PeriodicDirectTask;->run:Ljava/lang/Runnable;

    .line 409
    iput-object p2, p0, Lio/reactivex/Scheduler$PeriodicDirectTask;->worker:Lio/reactivex/Scheduler$Worker;

    .line 410
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/Scheduler$PeriodicDirectTask;->disposed:Z

    .line 428
    iget-object v0, p0, Lio/reactivex/Scheduler$PeriodicDirectTask;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 429
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 433
    iget-boolean v0, p0, Lio/reactivex/Scheduler$PeriodicDirectTask;->disposed:Z

    return v0
.end method

.method public run()V
    .locals 2

    .line 414
    iget-boolean v0, p0, Lio/reactivex/Scheduler$PeriodicDirectTask;->disposed:Z

    if-nez v0, :cond_0

    .line 416
    :try_start_0
    iget-object v0, p0, Lio/reactivex/Scheduler$PeriodicDirectTask;->run:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    goto :goto_0

    .line 417
    :catchall_0
    move-exception v0

    .line 418
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 419
    iget-object v1, p0, Lio/reactivex/Scheduler$PeriodicDirectTask;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v1}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 420
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 423
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method
