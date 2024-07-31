.class final Lio/reactivex/subjects/SingleSubject$SingleDisposable;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SingleSubject.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/subjects/SingleSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SingleDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/subjects/SingleSubject<",
        "TT;>;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6a2d77ea7e969284L


# instance fields
.field final actual:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Lio/reactivex/subjects/SingleSubject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;",
            "Lio/reactivex/subjects/SingleSubject<",
            "TT;>;)V"
        }
    .end annotation

    .line 239
    .local p0, "this":Lio/reactivex/subjects/SingleSubject$SingleDisposable;, "Lio/reactivex/subjects/SingleSubject$SingleDisposable<TT;>;"
    .local p1, "actual":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    .local p2, "parent":Lio/reactivex/subjects/SingleSubject;, "Lio/reactivex/subjects/SingleSubject<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 240
    iput-object p1, p0, Lio/reactivex/subjects/SingleSubject$SingleDisposable;->actual:Lio/reactivex/SingleObserver;

    .line 241
    invoke-virtual {p0, p2}, Lio/reactivex/subjects/SingleSubject$SingleDisposable;->lazySet(Ljava/lang/Object;)V

    .line 242
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 246
    .local p0, "this":Lio/reactivex/subjects/SingleSubject$SingleDisposable;, "Lio/reactivex/subjects/SingleSubject$SingleDisposable<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/reactivex/subjects/SingleSubject$SingleDisposable;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/SingleSubject;

    .line 247
    .local v0, "parent":Lio/reactivex/subjects/SingleSubject;, "Lio/reactivex/subjects/SingleSubject<TT;>;"
    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0, p0}, Lio/reactivex/subjects/SingleSubject;->remove(Lio/reactivex/subjects/SingleSubject$SingleDisposable;)V

    .line 250
    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 254
    .local p0, "this":Lio/reactivex/subjects/SingleSubject$SingleDisposable;, "Lio/reactivex/subjects/SingleSubject$SingleDisposable<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/subjects/SingleSubject$SingleDisposable;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
