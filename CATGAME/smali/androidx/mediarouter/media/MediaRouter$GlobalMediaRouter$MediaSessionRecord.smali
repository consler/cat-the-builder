.class final Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaSessionRecord"
.end annotation


# instance fields
.field private mControlType:I

.field private mMaxVolume:I

.field private final mMsCompat:Landroid/support/v4/media/session/MediaSessionCompat;

.field private mVpCompat:Landroidx/media/VolumeProviderCompat;

.field final synthetic this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 0

    .line 3009
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3010
    iput-object p2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->mMsCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    return-void
.end method

.method constructor <init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;Ljava/lang/Object;)V
    .locals 1

    .line 3006
    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->fromMediaSession(Landroid/content/Context;Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;-><init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;Landroid/support/v4/media/session/MediaSessionCompat;)V

    return-void
.end method


# virtual methods
.method public clearVolumeHandling()V
    .locals 2

    .line 3053
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->mMsCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_0

    .line 3054
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    iget v1, v1, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->playbackStream:I

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackToLocal(I)V

    const/4 v0, 0x0

    .line 3055
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->mVpCompat:Landroidx/media/VolumeProviderCompat;

    :cond_0
    return-void
.end method

.method public configureVolume(III)V
    .locals 2

    .line 3015
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->mMsCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_1

    .line 3016
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->mVpCompat:Landroidx/media/VolumeProviderCompat;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->mControlType:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->mMaxVolume:I

    if-ne p2, v1, :cond_0

    .line 3019
    invoke-virtual {v0, p3}, Landroidx/media/VolumeProviderCompat;->setCurrentVolume(I)V

    goto :goto_0

    .line 3022
    :cond_0
    new-instance v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1;-><init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;III)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->mVpCompat:Landroidx/media/VolumeProviderCompat;

    .line 3047
    iget-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->mMsCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackToRemote(Landroidx/media/VolumeProviderCompat;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .line 3060
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->mMsCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_0

    .line 3061
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
