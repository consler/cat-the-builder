.class final Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedScheduledFuture;
.super Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedFuture;
.source "ImmediateFuture.java"

# interfaces
.implements Ljava/util/concurrent/ScheduledFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/utils/futures/ImmediateFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ImmediateFailedScheduledFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedFuture<",
        "TV;>;",
        "Ljava/util/concurrent/ScheduledFuture<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 150
    .local p0, "this":Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedScheduledFuture;, "Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedScheduledFuture<TV;>;"
    invoke-direct {p0, p1}, Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedFuture;-><init>(Ljava/lang/Throwable;)V

    .line 151
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 146
    .local p0, "this":Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedScheduledFuture;, "Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedScheduledFuture<TV;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedScheduledFuture;->compareTo(Ljava/util/concurrent/Delayed;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljava/util/concurrent/Delayed;)I
    .locals 1
    .param p1, "delayed"    # Ljava/util/concurrent/Delayed;

    .line 160
    .local p0, "this":Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedScheduledFuture;, "Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedScheduledFuture<TV;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 155
    .local p0, "this":Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedScheduledFuture;, "Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedScheduledFuture<TV;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method
