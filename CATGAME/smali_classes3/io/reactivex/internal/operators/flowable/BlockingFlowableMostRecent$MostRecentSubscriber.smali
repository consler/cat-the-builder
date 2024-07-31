.class final Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber;
.super Lio/reactivex/subscribers/DefaultSubscriber;
.source "BlockingFlowableMostRecent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MostRecentSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber$Iterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/subscribers/DefaultSubscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field volatile value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber;, "Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lio/reactivex/subscribers/DefaultSubscriber;-><init>()V

    .line 58
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber;->value:Ljava/lang/Object;

    .line 59
    return-void
.end method


# virtual methods
.method public getIterable()Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber$Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber<",
            "TT;>.Iterator;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber;, "Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber<TT;>;"
    new-instance v0, Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber$Iterator;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber$Iterator;-><init>(Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber;)V

    return-object v0
.end method

.method public onComplete()V
    .locals 1

    .line 63
    .local p0, "this":Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber;, "Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber<TT;>;"
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber;->value:Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 68
    .local p0, "this":Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber;, "Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber<TT;>;"
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber;->value:Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber;, "Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber<TT;>;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber;->value:Ljava/lang/Object;

    .line 74
    return-void
.end method
