.class final Lio/reactivex/internal/operators/observable/ObservablePublish$PublishSource;
.super Ljava/lang/Object;
.source "ObservablePublish.java"

# interfaces
.implements Lio/reactivex/ObservableSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservablePublish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublishSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableSource<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final curr:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 322
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublish$PublishSource;, "Lio/reactivex/internal/operators/observable/ObservablePublish$PublishSource<TT;>;"
    .local p1, "curr":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishSource;->curr:Ljava/util/concurrent/atomic/AtomicReference;

    .line 324
    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/Observer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 329
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublish$PublishSource;, "Lio/reactivex/internal/operators/observable/ObservablePublish$PublishSource<TT;>;"
    .local p1, "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;-><init>(Lio/reactivex/Observer;)V

    .line 330
    .local v0, "inner":Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<TT;>;"
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 335
    :goto_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishSource;->curr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;

    .line 337
    .local v1, "r":Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;, "Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver<TT;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->isDisposed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 339
    :cond_0
    new-instance v2, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishSource;->curr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v3}, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 341
    .local v2, "u":Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;, "Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver<TT;>;"
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishSource;->curr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 344
    goto :goto_0

    .line 347
    :cond_1
    move-object v1, v2

    .line 354
    .end local v2    # "u":Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;, "Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver<TT;>;"
    :cond_2
    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->add(Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 355
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;->setParent(Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;)V

    .line 356
    nop

    .line 383
    .end local v1    # "r":Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;, "Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver<TT;>;"
    return-void

    .line 382
    :cond_3
    goto :goto_0
.end method
