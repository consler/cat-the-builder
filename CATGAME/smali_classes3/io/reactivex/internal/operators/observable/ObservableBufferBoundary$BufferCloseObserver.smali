.class final Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;
.super Lio/reactivex/observers/DisposableObserver;
.source "ObservableBufferBoundary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableBufferBoundary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferCloseObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;Open:",
        "Ljava/lang/Object;",
        "Close:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/DisposableObserver<",
        "TClose;>;"
    }
.end annotation


# instance fields
.field done:Z

.field final parent:Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver<",
            "TT;TU;TOpen;TClose;>;"
        }
    .end annotation
.end field

.field final value:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver<",
            "TT;TU;TOpen;TClose;>;)V"
        }
    .end annotation

    .line 268
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver<TT;TU;TOpen;TClose;>;"
    .local p1, "value":Ljava/util/Collection;, "TU;"
    .local p2, "parent":Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver<TT;TU;TOpen;TClose;>;"
    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    .line 269
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;

    .line 270
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;->value:Ljava/util/Collection;

    .line 271
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 289
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver<TT;TU;TOpen;TClose;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;->done:Z

    if-eqz v0, :cond_0

    .line 290
    return-void

    .line 292
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;->done:Z

    .line 293
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;->value:Ljava/util/Collection;

    invoke-virtual {v0, v1, p0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->close(Ljava/util/Collection;Lio/reactivex/disposables/Disposable;)V

    .line 294
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 280
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver<TT;TU;TOpen;TClose;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;->done:Z

    if-eqz v0, :cond_0

    .line 281
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 282
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->onError(Ljava/lang/Throwable;)V

    .line 285
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TClose;)V"
        }
    .end annotation

    .line 275
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver<TT;TU;TOpen;TClose;>;"
    .local p1, "t":Ljava/lang/Object;, "TClose;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;->onComplete()V

    .line 276
    return-void
.end method
