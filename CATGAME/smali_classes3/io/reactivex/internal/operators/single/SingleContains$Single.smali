.class final Lio/reactivex/internal/operators/single/SingleContains$Single;
.super Ljava/lang/Object;
.source "SingleContains.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleContains;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Single"
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
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/reactivex/internal/operators/single/SingleContains;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/SingleContains;Lio/reactivex/SingleObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleContains$Single;, "Lio/reactivex/internal/operators/single/SingleContains<TT;>.Single;"
    .local p2, "s":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleContains$Single;->this$0:Lio/reactivex/internal/operators/single/SingleContains;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleContains$Single;->s:Lio/reactivex/SingleObserver;

    .line 47
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 70
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleContains$Single;, "Lio/reactivex/internal/operators/single/SingleContains<TT;>.Single;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleContains$Single;->s:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 71
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 51
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleContains$Single;, "Lio/reactivex/internal/operators/single/SingleContains<TT;>.Single;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleContains$Single;->s:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 52
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleContains$Single;, "Lio/reactivex/internal/operators/single/SingleContains<TT;>.Single;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleContains$Single;->this$0:Lio/reactivex/internal/operators/single/SingleContains;

    iget-object v1, v1, Lio/reactivex/internal/operators/single/SingleContains;->comparer:Lio/reactivex/functions/BiPredicate;

    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleContains$Single;->this$0:Lio/reactivex/internal/operators/single/SingleContains;

    iget-object v2, v2, Lio/reactivex/internal/operators/single/SingleContains;->value:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Lio/reactivex/functions/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .local v0, "b":Z
    nop

    .line 65
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleContains$Single;->s:Lio/reactivex/SingleObserver;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 66
    return-void

    .line 60
    .end local v0    # "b":Z
    :catchall_0
    move-exception v1

    .line 61
    .restart local v0    # "b":Z
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 62
    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleContains$Single;->s:Lio/reactivex/SingleObserver;

    invoke-interface {v2, v1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 63
    return-void
.end method
