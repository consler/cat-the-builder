.class public final Lio/reactivex/internal/util/BlockingIgnoringReceiver;
.super Ljava/util/concurrent/CountDownLatch;
.source "BlockingIgnoringReceiver.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CountDownLatch;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;",
        "Lio/reactivex/functions/Action;"
    }
.end annotation


# instance fields
.field public error:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/util/BlockingIgnoringReceiver;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 34
    iput-object p1, p0, Lio/reactivex/internal/util/BlockingIgnoringReceiver;->error:Ljava/lang/Throwable;

    .line 35
    invoke-virtual {p0}, Lio/reactivex/internal/util/BlockingIgnoringReceiver;->countDown()V

    .line 36
    return-void
.end method

.method public run()V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lio/reactivex/internal/util/BlockingIgnoringReceiver;->countDown()V

    .line 41
    return-void
.end method
