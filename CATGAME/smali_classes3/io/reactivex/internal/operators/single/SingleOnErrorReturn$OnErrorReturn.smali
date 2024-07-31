.class final Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;
.super Ljava/lang/Object;
.source "SingleOnErrorReturn.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleOnErrorReturn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OnErrorReturn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final observer:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/reactivex/internal/operators/single/SingleOnErrorReturn;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/SingleOnErrorReturn;Lio/reactivex/SingleObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;, "Lio/reactivex/internal/operators/single/SingleOnErrorReturn<TT;>.OnErrorReturn;"
    .local p2, "observer":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;->this$0:Lio/reactivex/internal/operators/single/SingleOnErrorReturn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;->observer:Lio/reactivex/SingleObserver;

    .line 49
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 55
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;, "Lio/reactivex/internal/operators/single/SingleOnErrorReturn<TT;>.OnErrorReturn;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;->this$0:Lio/reactivex/internal/operators/single/SingleOnErrorReturn;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn;->valueSupplier:Lio/reactivex/functions/Function;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;->this$0:Lio/reactivex/internal/operators/single/SingleOnErrorReturn;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn;->valueSupplier:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .local v0, "v":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 58
    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v0

    .line 59
    .local v0, "ex":Ljava/lang/Throwable;
    .local v1, "v":Ljava/lang/Object;, "TT;"
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 60
    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;->observer:Lio/reactivex/SingleObserver;

    new-instance v3, Lio/reactivex/exceptions/CompositeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-direct {v3, v4}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 61
    return-void

    .line 55
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object v0, v1

    .line 64
    .local v0, "v":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;->this$0:Lio/reactivex/internal/operators/single/SingleOnErrorReturn;

    iget-object v0, v1, Lio/reactivex/internal/operators/single/SingleOnErrorReturn;->value:Ljava/lang/Object;

    .line 67
    :goto_0
    if-nez v0, :cond_1

    .line 68
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Value supplied was null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v1, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 70
    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;->observer:Lio/reactivex/SingleObserver;

    invoke-interface {v2, v1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 71
    return-void

    .line 74
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;->observer:Lio/reactivex/SingleObserver;

    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 79
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;, "Lio/reactivex/internal/operators/single/SingleOnErrorReturn<TT;>.OnErrorReturn;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;->observer:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 80
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 84
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;, "Lio/reactivex/internal/operators/single/SingleOnErrorReturn<TT;>.OnErrorReturn;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;->observer:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 85
    return-void
.end method
