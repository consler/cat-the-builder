.class final Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferBoundaryObserver;
.super Lio/reactivex/observers/DisposableObserver;
.source "ObservableBufferExactBoundary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferBoundaryObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/DisposableObserver<",
        "TB;>;"
    }
.end annotation


# instance fields
.field final parent:Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferExactBoundaryObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferExactBoundaryObserver<",
            "TT;TU;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferExactBoundaryObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferExactBoundaryObserver<",
            "TT;TU;TB;>;)V"
        }
    .end annotation

    .line 182
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferBoundaryObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferBoundaryObserver<TT;TU;TB;>;"
    .local p1, "parent":Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferExactBoundaryObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferExactBoundaryObserver<TT;TU;TB;>;"
    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    .line 183
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferBoundaryObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferExactBoundaryObserver;

    .line 184
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 198
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferBoundaryObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferBoundaryObserver<TT;TU;TB;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferBoundaryObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferExactBoundaryObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferExactBoundaryObserver;->onComplete()V

    .line 199
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 193
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferBoundaryObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferBoundaryObserver<TT;TU;TB;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferBoundaryObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferExactBoundaryObserver;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferExactBoundaryObserver;->onError(Ljava/lang/Throwable;)V

    .line 194
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 188
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferBoundaryObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferBoundaryObserver<TT;TU;TB;>;"
    .local p1, "t":Ljava/lang/Object;, "TB;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferBoundaryObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferExactBoundaryObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableBufferExactBoundary$BufferExactBoundaryObserver;->next()V

    .line 189
    return-void
.end method
