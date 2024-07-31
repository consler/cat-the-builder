.class Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;
.super Ljava/lang/Object;
.source "SingleEquals.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleEquals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InnerObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final index:I

.field final s:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final set:Lio/reactivex/disposables/CompositeDisposable;

.field final values:[Ljava/lang/Object;


# direct methods
.method constructor <init>(ILio/reactivex/disposables/CompositeDisposable;[Ljava/lang/Object;Lio/reactivex/SingleObserver;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "set"    # Lio/reactivex/disposables/CompositeDisposable;
    .param p3, "values"    # [Ljava/lang/Object;
    .param p5, "count"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/reactivex/disposables/CompositeDisposable;",
            "[",
            "Ljava/lang/Object;",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;, "Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver<TT;>;"
    .local p4, "s":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->index:I

    .line 55
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    .line 56
    iput-object p3, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->values:[Ljava/lang/Object;

    .line 57
    iput-object p4, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->s:Lio/reactivex/SingleObserver;

    .line 58
    iput-object p5, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 77
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;, "Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 78
    .local v0, "state":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 79
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 80
    return-void

    .line 82
    :cond_0
    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 84
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->s:Lio/reactivex/SingleObserver;

    invoke-interface {v1, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 85
    return-void

    .line 87
    .end local v0    # "state":I
    :cond_1
    goto :goto_0
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 62
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;, "Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 63
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;, "Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->values:[Ljava/lang/Object;

    iget v1, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->index:I

    aput-object p1, v0, v1

    .line 69
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->s:Lio/reactivex/SingleObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;->values:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v2, v1}, Lio/reactivex/internal/functions/ObjectHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 72
    :cond_0
    return-void
.end method
