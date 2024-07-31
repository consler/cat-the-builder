.class final Lio/reactivex/disposables/ActionDisposable;
.super Lio/reactivex/disposables/ReferenceDisposable;
.source "ActionDisposable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/disposables/ReferenceDisposable<",
        "Lio/reactivex/functions/Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x721258278bee89a1L


# direct methods
.method constructor <init>(Lio/reactivex/functions/Action;)V
    .locals 0
    .param p1, "value"    # Lio/reactivex/functions/Action;

    .line 24
    invoke-direct {p0, p1}, Lio/reactivex/disposables/ReferenceDisposable;-><init>(Ljava/lang/Object;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected onDisposed(Lio/reactivex/functions/Action;)V
    .locals 2
    .param p1, "value"    # Lio/reactivex/functions/Action;

    .line 30
    :try_start_0
    invoke-interface {p1}, Lio/reactivex/functions/Action;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    nop

    .line 34
    return-void

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected bridge synthetic onDisposed(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 19
    move-object v0, p1

    check-cast v0, Lio/reactivex/functions/Action;

    invoke-virtual {p0, v0}, Lio/reactivex/disposables/ActionDisposable;->onDisposed(Lio/reactivex/functions/Action;)V

    return-void
.end method
