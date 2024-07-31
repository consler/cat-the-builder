.class public final Landroidx/mediarouter/media/MediaSessionStatus$Builder;
.super Ljava/lang/Object;
.source "MediaSessionStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaSessionStatus;
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
    .param p1, "sessionState"    # I

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaSessionStatus$Builder;->mBundle:Landroid/os/Bundle;

    .line 187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/mediarouter/media/MediaSessionStatus$Builder;->setTimestamp(J)Landroidx/mediarouter/media/MediaSessionStatus$Builder;

    .line 188
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaSessionStatus$Builder;->setSessionState(I)Landroidx/mediarouter/media/MediaSessionStatus$Builder;

    .line 189
    return-void
.end method

.method public constructor <init>(Landroidx/mediarouter/media/MediaSessionStatus;)V
    .locals 2
    .param p1, "status"    # Landroidx/mediarouter/media/MediaSessionStatus;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    if-eqz p1, :cond_0

    .line 200
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroidx/mediarouter/media/MediaSessionStatus;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaSessionStatus$Builder;->mBundle:Landroid/os/Bundle;

    .line 201
    return-void

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "status must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroidx/mediarouter/media/MediaSessionStatus;
    .locals 2

    .line 242
    new-instance v0, Landroidx/mediarouter/media/MediaSessionStatus;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaSessionStatus$Builder;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroidx/mediarouter/media/MediaSessionStatus;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaSessionStatus$Builder;
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 234
    iget-object v0, p0, Landroidx/mediarouter/media/MediaSessionStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "extras"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 235
    return-object p0
.end method

.method public setQueuePaused(Z)Landroidx/mediarouter/media/MediaSessionStatus$Builder;
    .locals 2
    .param p1, "queuePaused"    # Z

    .line 224
    iget-object v0, p0, Landroidx/mediarouter/media/MediaSessionStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "queuePaused"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 225
    return-object p0
.end method

.method public setSessionState(I)Landroidx/mediarouter/media/MediaSessionStatus$Builder;
    .locals 2
    .param p1, "sessionState"    # I

    .line 216
    iget-object v0, p0, Landroidx/mediarouter/media/MediaSessionStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "sessionState"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    return-object p0
.end method

.method public setTimestamp(J)Landroidx/mediarouter/media/MediaSessionStatus$Builder;
    .locals 2
    .param p1, "elapsedRealtimeTimestamp"    # J

    .line 208
    iget-object v0, p0, Landroidx/mediarouter/media/MediaSessionStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "timestamp"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 209
    return-object p0
.end method
