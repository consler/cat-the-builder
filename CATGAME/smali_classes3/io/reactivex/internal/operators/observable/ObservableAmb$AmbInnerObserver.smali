.class final Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableAmb.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableAmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AmbInnerObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x10756d62aa142dccL


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final index:I

.field final parent:Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator<",
            "TT;>;"
        }
    .end annotation
.end field

.field won:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;ILio/reactivex/Observer;)V
    .locals 0
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator<",
            "TT;>;I",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 149
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver<TT;>;"
    .local p1, "parent":Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator<TT;>;"
    .local p3, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 150
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;

    .line 151
    iput p2, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->index:I

    .line 152
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->actual:Lio/reactivex/Observer;

    .line 153
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 201
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver<TT;>;"
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 202
    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 190
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->won:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->index:I

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->win(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->won:Z

    .line 195
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 198
    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 176
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->won:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->index:I

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->win(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->won:Z

    .line 181
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 183
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 186
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 162
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->won:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->index:I

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->win(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->won:Z

    .line 167
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 172
    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 157
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver<TT;>;"
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    .line 158
    return-void
.end method
