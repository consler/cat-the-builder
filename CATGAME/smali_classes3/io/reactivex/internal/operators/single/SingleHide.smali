.class public final Lio/reactivex/internal/operators/single/SingleHide;
.super Lio/reactivex/Single;
.source "SingleHide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleHide$HideSingleObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final source:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/SingleSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleSource<",
            "+TT;>;)V"
        }
    .end annotation

    .line 24
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleHide;, "Lio/reactivex/internal/operators/single/SingleHide<TT;>;"
    .local p1, "source":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<+TT;>;"
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    .line 25
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleHide;->source:Lio/reactivex/SingleSource;

    .line 26
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 30
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleHide;, "Lio/reactivex/internal/operators/single/SingleHide<TT;>;"
    .local p1, "subscriber":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleHide;->source:Lio/reactivex/SingleSource;

    new-instance v1, Lio/reactivex/internal/operators/single/SingleHide$HideSingleObserver;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/single/SingleHide$HideSingleObserver;-><init>(Lio/reactivex/SingleObserver;)V

    invoke-interface {v0, v1}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 31
    return-void
.end method
