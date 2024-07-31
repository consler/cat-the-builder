.class final Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "MaybeUsing.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeUsing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UsingObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x95bf75d78cfb0efL


# instance fields
.field final actual:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field d:Lio/reactivex/disposables/Disposable;

.field final disposer:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TD;>;"
        }
    .end annotation
.end field

.field final eager:Z


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;Ljava/lang/Object;Lio/reactivex/functions/Consumer;Z)V
    .locals 0
    .param p4, "eager"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;TD;",
            "Lio/reactivex/functions/Consumer<",
            "-TD;>;Z)V"
        }
    .end annotation

    .line 114
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;, "Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver<TT;TD;>;"
    .local p1, "actual":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    .local p2, "resource":Ljava/lang/Object;, "TD;"
    .local p3, "disposer":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-TD;>;"
    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 115
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->actual:Lio/reactivex/MaybeObserver;

    .line 116
    iput-object p3, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->disposer:Lio/reactivex/functions/Consumer;

    .line 117
    iput-boolean p4, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->eager:Z

    .line 118
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 122
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;, "Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver<TT;TD;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 123
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 124
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->disposeResourceAfter()V

    .line 125
    return-void
.end method

.method disposeResourceAfter()V
    .locals 2

    .line 129
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;, "Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver<TT;TD;>;"
    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    .local v0, "resource":Ljava/lang/Object;
    if-eq v0, p0, :cond_0

    .line 132
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->disposer:Lio/reactivex/functions/Consumer;

    invoke-interface {v1, v0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    goto :goto_0

    .line 133
    :catchall_0
    move-exception v1

    .line 134
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 135
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 138
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 142
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;, "Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver<TT;TD;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 3

    .line 208
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;, "Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver<TT;TD;>;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 209
    iget-boolean v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->eager:Z

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 211
    .local v0, "resource":Ljava/lang/Object;
    if-eq v0, p0, :cond_0

    .line 213
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->disposer:Lio/reactivex/functions/Consumer;

    invoke-interface {v1, v0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    goto :goto_0

    .line 214
    :catchall_0
    move-exception v1

    .line 215
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 216
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v2, v1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 217
    return-void

    .line 220
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_0
    return-void

    .line 224
    .end local v0    # "resource":Ljava/lang/Object;
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    .line 226
    iget-boolean v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->eager:Z

    if-nez v0, :cond_2

    .line 227
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->disposeResourceAfter()V

    .line 229
    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 183
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;, "Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver<TT;TD;>;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 184
    iget-boolean v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->eager:Z

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 186
    .local v0, "resource":Ljava/lang/Object;
    if-eq v0, p0, :cond_0

    .line 188
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->disposer:Lio/reactivex/functions/Consumer;

    invoke-interface {v1, v0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v1

    .line 190
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 191
    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v2

    .line 192
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 194
    :cond_0
    return-void

    .line 198
    .end local v0    # "resource":Ljava/lang/Object;
    :cond_1
    :goto_1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 200
    iget-boolean v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->eager:Z

    if-nez v0, :cond_2

    .line 201
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->disposeResourceAfter()V

    .line 203
    :cond_2
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 147
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;, "Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver<TT;TD;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 150
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 152
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 157
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;, "Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver<TT;TD;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 158
    iget-boolean v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->eager:Z

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 160
    .local v0, "resource":Ljava/lang/Object;
    if-eq v0, p0, :cond_0

    .line 162
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->disposer:Lio/reactivex/functions/Consumer;

    invoke-interface {v1, v0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    goto :goto_0

    .line 163
    :catchall_0
    move-exception v1

    .line 164
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 165
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v2, v1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 166
    return-void

    .line 169
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_0
    return-void

    .line 173
    .end local v0    # "resource":Ljava/lang/Object;
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    .line 175
    iget-boolean v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->eager:Z

    if-nez v0, :cond_2

    .line 176
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->disposeResourceAfter()V

    .line 178
    :cond_2
    return-void
.end method
