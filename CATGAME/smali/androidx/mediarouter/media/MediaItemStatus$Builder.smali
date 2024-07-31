.class public final Landroidx/mediarouter/media/MediaItemStatus$Builder;
.super Ljava/lang/Object;
.source "MediaItemStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaItemStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "playbackState"    # I

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    .line 325
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->setTimestamp(J)Landroidx/mediarouter/media/MediaItemStatus$Builder;

    .line 326
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->setPlaybackState(I)Landroidx/mediarouter/media/MediaItemStatus$Builder;

    .line 327
    return-void
.end method

.method public constructor <init>(Landroidx/mediarouter/media/MediaItemStatus;)V
    .locals 2
    .param p1, "status"    # Landroidx/mediarouter/media/MediaItemStatus;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    if-eqz p1, :cond_0

    .line 338
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroidx/mediarouter/media/MediaItemStatus;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    .line 339
    return-void

    .line 335
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "status must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroidx/mediarouter/media/MediaItemStatus;
    .locals 2

    .line 390
    new-instance v0, Landroidx/mediarouter/media/MediaItemStatus;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroidx/mediarouter/media/MediaItemStatus;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public setContentDuration(J)Landroidx/mediarouter/media/MediaItemStatus$Builder;
    .locals 2
    .param p1, "durationMilliseconds"    # J

    .line 372
    iget-object v0, p0, Landroidx/mediarouter/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "contentDuration"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 373
    return-object p0
.end method

.method public setContentPosition(J)Landroidx/mediarouter/media/MediaItemStatus$Builder;
    .locals 2
    .param p1, "positionMilliseconds"    # J

    .line 363
    iget-object v0, p0, Landroidx/mediarouter/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "contentPosition"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 364
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaItemStatus$Builder;
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 382
    iget-object v0, p0, Landroidx/mediarouter/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "extras"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 383
    return-object p0
.end method

.method public setPlaybackState(I)Landroidx/mediarouter/media/MediaItemStatus$Builder;
    .locals 2
    .param p1, "playbackState"    # I

    .line 354
    iget-object v0, p0, Landroidx/mediarouter/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "playbackState"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 355
    return-object p0
.end method

.method public setTimestamp(J)Landroidx/mediarouter/media/MediaItemStatus$Builder;
    .locals 2
    .param p1, "elapsedRealtimeTimestamp"    # J

    .line 346
    iget-object v0, p0, Landroidx/mediarouter/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "timestamp"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 347
    return-object p0
.end method
