.class public Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;
.super Landroid/media/MediaPlayer;
.source "MediaPlayerWithSoundDetails.java"


# instance fields
.field private pathToSoundFile:Ljava/lang/String;

.field private startedBySprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->startedBySprite:Lorg/catrobat/catroid/content/Sprite;

    .line 30
    iput-object v0, p0, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->pathToSoundFile:Ljava/lang/String;

    return-void
.end method

.method private clearData()V
    .locals 1

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->startedBySprite:Lorg/catrobat/catroid/content/Sprite;

    .line 62
    iput-object v0, p0, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->pathToSoundFile:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public getPathToSoundFile()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->pathToSoundFile:Ljava/lang/String;

    return-object v0
.end method

.method public getStartedBySprite()Lorg/catrobat/catroid/content/Sprite;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->startedBySprite:Lorg/catrobat/catroid/content/Sprite;

    return-object v0
.end method

.method public release()V
    .locals 0

    .line 50
    invoke-super {p0}, Landroid/media/MediaPlayer;->release()V

    .line 51
    invoke-direct {p0}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->clearData()V

    .line 52
    return-void
.end method

.method public reset()V
    .locals 0

    .line 56
    invoke-super {p0}, Landroid/media/MediaPlayer;->reset()V

    .line 57
    invoke-direct {p0}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->clearData()V

    .line 58
    return-void
.end method

.method public setPathToSoundFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "pathToSoundFile"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->pathToSoundFile:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setStartedBySprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "startedBySprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 37
    iput-object p1, p0, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->startedBySprite:Lorg/catrobat/catroid/content/Sprite;

    .line 38
    return-void
.end method
