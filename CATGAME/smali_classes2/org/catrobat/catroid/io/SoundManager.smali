.class public Lorg/catrobat/catroid/io/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"


# static fields
.field private static final INSTANCE:Lorg/catrobat/catroid/io/SoundManager;

.field public static final MAX_MEDIA_PLAYERS:I = 0x7

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mediaPlayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final recentlyStoppedSoundfilePaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/catrobat/catroid/content/SoundFilePathWithSprite;",
            ">;"
        }
    .end annotation
.end field

.field private volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lorg/catrobat/catroid/io/SoundManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/io/SoundManager;->TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Lorg/catrobat/catroid/io/SoundManager;

    invoke-direct {v0}, Lorg/catrobat/catroid/io/SoundManager;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/io/SoundManager;->INSTANCE:Lorg/catrobat/catroid/io/SoundManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/catrobat/catroid/io/SoundManager;->mediaPlayers:Ljava/util/List;

    .line 51
    const/high16 v0, 0x428c0000    # 70.0f

    iput v0, p0, Lorg/catrobat/catroid/io/SoundManager;->volume:F

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/io/SoundManager;->recentlyStoppedSoundfilePaths:Ljava/util/Set;

    .line 57
    return-void
.end method

.method private getAvailableMediaPlayer()Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;
    .locals 3

    .line 117
    iget-object v0, p0, Lorg/catrobat/catroid/io/SoundManager;->mediaPlayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;

    .line 118
    .local v1, "mediaPlayer":Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->reset()V

    .line 120
    return-object v1

    .line 122
    .end local v1    # "mediaPlayer":Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;
    :cond_0
    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/io/SoundManager;->mediaPlayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_2

    .line 125
    new-instance v0, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;-><init>()V

    .line 126
    .local v0, "mediaPlayer":Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;
    iget-object v1, p0, Lorg/catrobat/catroid/io/SoundManager;->mediaPlayers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget v1, p0, Lorg/catrobat/catroid/io/SoundManager;->volume:F

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/io/SoundManager;->setVolume(F)V

    .line 128
    return-object v0

    .line 130
    .end local v0    # "mediaPlayer":Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;
    :cond_2
    sget-object v0, Lorg/catrobat/catroid/io/SoundManager;->TAG:Ljava/lang/String;

    const-string v1, "All MediaPlayer instances in use"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Lorg/catrobat/catroid/io/SoundManager;
    .locals 1

    .line 60
    sget-object v0, Lorg/catrobat/catroid/io/SoundManager;->INSTANCE:Lorg/catrobat/catroid/io/SoundManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/io/SoundManager;->mediaPlayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;

    .line 154
    .local v1, "mediaPlayer":Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->reset()V

    .line 155
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->release()V

    .line 156
    .end local v1    # "mediaPlayer":Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;
    goto :goto_0

    .line 157
    .end local p0    # "this":Lorg/catrobat/catroid/io/SoundManager;
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/io/SoundManager;->mediaPlayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 158
    iget-object v0, p0, Lorg/catrobat/catroid/io/SoundManager;->recentlyStoppedSoundfilePaths:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDurationOfSoundFile(Ljava/lang/String;)F
    .locals 6
    .param p1, "pathToSoundfile"    # Ljava/lang/String;

    monitor-enter p0

    .line 101
    :try_start_0
    invoke-direct {p0}, Lorg/catrobat/catroid/io/SoundManager;->getAvailableMediaPlayer()Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .local v0, "mediaPlayer":Landroid/media/MediaPlayer;
    const/4 v1, 0x0

    .line 103
    .local v1, "duration":F
    if-eqz v0, :cond_0

    .line 105
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 107
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-float v1, v2

    .line 108
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    goto :goto_0

    .line 109
    .end local p0    # "this":Lorg/catrobat/catroid/io/SoundManager;
    :catch_0
    move-exception v2

    .line 110
    .local v2, "exception":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lorg/catrobat/catroid/io/SoundManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t play sound file \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .end local v2    # "exception":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 100
    .end local v0    # "mediaPlayer":Landroid/media/MediaPlayer;
    .end local v1    # "duration":F
    .end local p1    # "pathToSoundfile":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getMediaPlayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/catrobat/catroid/io/SoundManager;->mediaPlayers:Ljava/util/List;

    return-object v0
.end method

.method public getPlayingSoundBackups()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/SoundBackup;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v0, "backupList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/SoundBackup;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/io/SoundManager;->mediaPlayers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;

    .line 190
    .local v2, "mediaPlayer":Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    new-instance v3, Lorg/catrobat/catroid/content/SoundBackup;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->getPathToSoundFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->getStartedBySprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v5

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->getCurrentPosition()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lorg/catrobat/catroid/content/SoundBackup;-><init>(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    .end local v2    # "mediaPlayer":Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;
    :cond_0
    goto :goto_0

    .line 194
    :cond_1
    return-object v0
.end method

.method public declared-synchronized getRecentlyStoppedSoundfilePaths()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/catrobat/catroid/content/SoundFilePathWithSprite;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/io/SoundManager;->recentlyStoppedSoundfilePaths:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 97
    .end local p0    # "this":Lorg/catrobat/catroid/io/SoundManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVolume()F
    .locals 1

    monitor-enter p0

    .line 149
    :try_start_0
    iget v0, p0, Lorg/catrobat/catroid/io/SoundManager;->volume:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 149
    .end local p0    # "this":Lorg/catrobat/catroid/io/SoundManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 3

    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/io/SoundManager;->mediaPlayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 163
    .local v1, "mediaPlayer":Landroid/media/MediaPlayer;
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_1

    .line 166
    .end local p0    # "this":Lorg/catrobat/catroid/io/SoundManager;
    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .end local v1    # "mediaPlayer":Landroid/media/MediaPlayer;
    :goto_1
    goto :goto_0

    .line 169
    :cond_1
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized playSoundFile(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;)V
    .locals 1
    .param p1, "soundFilePath"    # Ljava/lang/String;
    .param p2, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    monitor-enter p0

    .line 64
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/catrobat/catroid/io/SoundManager;->playSoundFileWithStartTime(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 63
    .end local p0    # "this":Lorg/catrobat/catroid/io/SoundManager;
    .end local p1    # "soundFilePath":Ljava/lang/String;
    .end local p2    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized playSoundFileWithStartTime(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;I)V
    .locals 5
    .param p1, "soundFilePath"    # Ljava/lang/String;
    .param p2, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p3, "startTimeInMilSeconds"    # I

    monitor-enter p0

    .line 69
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/io/SoundManager;->stopSameSoundInSprite(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;)V

    .line 70
    invoke-direct {p0}, Lorg/catrobat/catroid/io/SoundManager;->getAvailableMediaPlayer()Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .local v0, "mediaPlayer":Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;
    if-eqz v0, :cond_0

    .line 73
    :try_start_1
    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->setStartedBySprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 74
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->setPathToSoundFile(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->setDataSource(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->prepare()V

    .line 77
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->seekTo(I)V

    .line 78
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    goto :goto_0

    .line 79
    .end local p0    # "this":Lorg/catrobat/catroid/io/SoundManager;
    :catch_0
    move-exception v1

    .line 80
    .local v1, "exception":Ljava/lang/Exception;
    :try_start_2
    sget-object v2, Lorg/catrobat/catroid/io/SoundManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t play sound file \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    .end local v1    # "exception":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 68
    .end local v0    # "mediaPlayer":Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;
    .end local p1    # "soundFilePath":Ljava/lang/String;
    .end local p2    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    .end local p3    # "startTimeInMilSeconds":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resume()V
    .locals 3

    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/io/SoundManager;->mediaPlayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 173
    .local v1, "mediaPlayer":Landroid/media/MediaPlayer;
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .end local v1    # "mediaPlayer":Landroid/media/MediaPlayer;
    .end local p0    # "this":Lorg/catrobat/catroid/io/SoundManager;
    :cond_0
    goto :goto_0

    .line 177
    :cond_1
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVolume(F)V
    .locals 3
    .param p1, "volume"    # F

    monitor-enter p0

    .line 135
    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 136
    const/high16 p1, 0x42c80000    # 100.0f

    goto :goto_0

    .line 137
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 138
    const/4 p1, 0x0

    .line 141
    :cond_1
    :goto_0
    :try_start_0
    iput p1, p0, Lorg/catrobat/catroid/io/SoundManager;->volume:F

    .line 142
    const v0, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, p1

    .line 143
    .local v0, "volumeScalar":F
    iget-object v1, p0, Lorg/catrobat/catroid/io/SoundManager;->mediaPlayers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaPlayer;

    .line 144
    .local v2, "mediaPlayer":Landroid/media/MediaPlayer;
    invoke-virtual {v2, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .end local v2    # "mediaPlayer":Landroid/media/MediaPlayer;
    goto :goto_1

    .line 146
    .end local p0    # "this":Lorg/catrobat/catroid/io/SoundManager;
    :cond_2
    monitor-exit p0

    return-void

    .line 134
    .end local v0    # "volumeScalar":F
    .end local p1    # "volume":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopAllSounds()V
    .locals 3

    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/io/SoundManager;->mediaPlayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 181
    .local v1, "mediaPlayer":Landroid/media/MediaPlayer;
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .end local v1    # "mediaPlayer":Landroid/media/MediaPlayer;
    .end local p0    # "this":Lorg/catrobat/catroid/io/SoundManager;
    :cond_0
    goto :goto_0

    .line 185
    :cond_1
    monitor-exit p0

    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSameSoundInSprite(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;)V
    .locals 5
    .param p1, "pathToSoundFile"    # Ljava/lang/String;
    .param p2, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/io/SoundManager;->mediaPlayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;

    .line 87
    .local v1, "mediaPlayer":Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->getStartedBySprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 88
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->getPathToSoundFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->stop()V

    .line 90
    iget-object v2, p0, Lorg/catrobat/catroid/io/SoundManager;->recentlyStoppedSoundfilePaths:Ljava/util/Set;

    new-instance v3, Lorg/catrobat/catroid/content/SoundFilePathWithSprite;

    .line 91
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->getPathToSoundFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Lorg/catrobat/catroid/content/SoundFilePathWithSprite;-><init>(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;)V

    .line 90
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .end local v1    # "mediaPlayer":Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;
    .end local p0    # "this":Lorg/catrobat/catroid/io/SoundManager;
    :cond_0
    goto :goto_0

    .line 94
    :cond_1
    monitor-exit p0

    return-void

    .line 85
    .end local p1    # "pathToSoundFile":Ljava/lang/String;
    .end local p2    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
