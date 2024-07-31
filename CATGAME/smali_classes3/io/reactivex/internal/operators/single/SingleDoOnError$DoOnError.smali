.class final Lio/reactivex/internal/operators/single/SingleDoOnError$DoOnError;
.super Ljava/lang/Object;
.source "SingleDoOnError.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleDoOnError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DoOnError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final s:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/reactivex/internal/operators/single/SingleDoOnError;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/SingleDoOnError;Lio/reactivex/SingleObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDoOnError$DoOnError;, "Lio/reactivex/internal/operators/single/SingleDoOnError<TT;>.DoOnError;"
    .local p2, "s":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDoOnError$DoOnError;->this$0:Lio/reactivex/internal/operators/single/SingleDoOnError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleDoOnError$DoOnError;->s:Lio/reactivex/SingleObserver;

    .line 43
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 58
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDoOnError$DoOnError;, "Lio/reactivex/internal/operators/single/SingleDoOnError<TT;>.DoOnError;"
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnError$DoOnError;->this$0:Lio/reactivex/internal/operators/single/SingleDoOnError;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleDoOnError;->onError:Lio/reactivex/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 61
    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 63
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnError$DoOnError;->s:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 47
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDoOnError$DoOnError;, "Lio/reactivex/internal/operators/single/SingleDoOnError<TT;>.DoOnError;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnError$DoOnError;->s:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 48
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDoOnError$DoOnError;, "Lio/reactivex/internal/operators/single/SingleDoOnError<TT;>.DoOnError;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnError$DoOnError;->s:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 53
    return-void
.end method
