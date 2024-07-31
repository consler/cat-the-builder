.class final Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferOpenObserver;
.super Lio/reactivex/observers/DisposableObserver;
.source "ObservableBufferBoundary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableBufferBoundary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferOpenObserver"
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
        "TOpen;>;"
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


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver<",
            "TT;TU;TOpen;TClose;>;)V"
        }
    .end annotation

    .line 232
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferOpenObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferOpenObserver<TT;TU;TOpen;TClose;>;"
    .local p1, "parent":Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver<TT;TU;TOpen;TClose;>;"
    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    .line 233
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferOpenObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;

    .line 234
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 255
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferOpenObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferOpenObserver<TT;TU;TOpen;TClose;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferOpenObserver;->done:Z

    if-eqz v0, :cond_0

    .line 256
    return-void

    .line 258
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferOpenObserver;->done:Z

    .line 259
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferOpenObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->openFinished(Lio/reactivex/disposables/Disposable;)V

    .line 260
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 245
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferOpenObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferOpenObserver<TT;TU;TOpen;TClose;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferOpenObserver;->done:Z

    if-eqz v0, :cond_0

    .line 246
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 247
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferOpenObserver;->done:Z

    .line 250
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferOpenObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->onError(Ljava/lang/Throwable;)V

    .line 251
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOpen;)V"
        }
    .end annotation

    .line 237
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferOpenObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferOpenObserver<TT;TU;TOpen;TClose;>;"
    .local p1, "t":Ljava/lang/Object;, "TOpen;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferOpenObserver;->done:Z

    if-eqz v0, :cond_0

    .line 238
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferOpenObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->open(Ljava/lang/Object;)V

    .line 241
    return-void
.end method
