.class public Lorg/catrobat/catroid/content/actions/WaitForSoundAction;
.super Lorg/catrobat/catroid/content/actions/WaitAction;
.source "WaitForSoundAction.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private midiSoundManager:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

.field private soundFilePath:Ljava/lang/String;

.field private soundManager:Lorg/catrobat/catroid/io/SoundManager;

.field private soundStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/WaitAction;-><init>()V

    .line 39
    invoke-static {}, Lorg/catrobat/catroid/io/SoundManager;->getInstance()Lorg/catrobat/catroid/io/SoundManager;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->soundManager:Lorg/catrobat/catroid/io/SoundManager;

    .line 40
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->getInstance()Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->midiSoundManager:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->soundStopped:Z

    return-void
.end method


# virtual methods
.method protected end()V
    .locals 4

    .line 74
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->soundManager:Lorg/catrobat/catroid/io/SoundManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/io/SoundManager;->getMediaPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;

    .line 75
    .local v1, "mediaPlayer":Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->getStartedBySprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->getPathToSoundFile()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->soundFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->soundStopped:Z

    if-nez v2, :cond_0

    .line 76
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->restart()V

    .line 77
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;->getCurrentPosition()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->setTime(F)V

    .line 79
    .end local v1    # "mediaPlayer":Lorg/catrobat/catroid/content/MediaPlayerWithSoundDetails;
    :cond_0
    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->midiSoundManager:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->getMidiPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;

    .line 81
    .local v1, "midiPlayer":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;
    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->getStartedBySprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v3

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->getPathToSoundFile()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->soundFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->soundStopped:Z

    if-nez v2, :cond_2

    .line 82
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->restart()V

    .line 83
    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->getCurrentPosition()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->setTime(F)V

    .line 85
    .end local v1    # "midiPlayer":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;
    :cond_2
    goto :goto_1

    .line 86
    :cond_3
    return-void
.end method

.method public setMidiSoundManager(Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;)V
    .locals 0
    .param p1, "midiSoundManager"    # Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    .line 95
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->midiSoundManager:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    .line 96
    return-void
.end method

.method public setSoundFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "soundFilePath"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->soundFilePath:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setSoundManager(Lorg/catrobat/catroid/io/SoundManager;)V
    .locals 0
    .param p1, "soundManager"    # Lorg/catrobat/catroid/io/SoundManager;

    .line 90
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->soundManager:Lorg/catrobat/catroid/io/SoundManager;

    .line 91
    return-void
.end method

.method protected update(F)V
    .locals 6
    .param p1, "percent"    # F

    .line 49
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->soundFilePath:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->midiSoundManager:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->getStartedSoundfilePaths()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lorg/catrobat/catroid/content/SoundFilePathWithSprite;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->soundFilePath:Ljava/lang/String;

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/catrobat/catroid/content/SoundFilePathWithSprite;-><init>(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;)V

    .line 51
    .local v0, "spriteSoundFilePath":Lorg/catrobat/catroid/content/SoundFilePathWithSprite;
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->midiSoundManager:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    invoke-virtual {v2}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->getStartedSoundfilePaths()Ljava/util/Set;

    move-result-object v2

    .line 52
    .local v2, "recentlyStarted":Ljava/util/Set;, "Ljava/util/Set<Lorg/catrobat/catroid/content/SoundFilePathWithSprite;>;"
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->midiSoundManager:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v4

    iget-object v5, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->soundFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->isSoundInSpritePlaying(Lorg/catrobat/catroid/content/Sprite;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->finish()V

    .line 55
    iput-boolean v1, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->soundStopped:Z

    .line 56
    return-void

    .line 59
    .end local v0    # "spriteSoundFilePath":Lorg/catrobat/catroid/content/SoundFilePathWithSprite;
    .end local v2    # "recentlyStarted":Ljava/util/Set;, "Ljava/util/Set<Lorg/catrobat/catroid/content/SoundFilePathWithSprite;>;"
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->soundFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->soundManager:Lorg/catrobat/catroid/io/SoundManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/io/SoundManager;->getRecentlyStoppedSoundfilePaths()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    new-instance v0, Lorg/catrobat/catroid/content/SoundFilePathWithSprite;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->soundFilePath:Ljava/lang/String;

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 61
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/catrobat/catroid/content/SoundFilePathWithSprite;-><init>(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;)V

    .line 62
    .restart local v0    # "spriteSoundFilePath":Lorg/catrobat/catroid/content/SoundFilePathWithSprite;
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->soundManager:Lorg/catrobat/catroid/io/SoundManager;

    .line 63
    invoke-virtual {v2}, Lorg/catrobat/catroid/io/SoundManager;->getRecentlyStoppedSoundfilePaths()Ljava/util/Set;

    move-result-object v2

    .line 64
    .local v2, "recentlyStopped":Ljava/util/Set;, "Ljava/util/Set<Lorg/catrobat/catroid/content/SoundFilePathWithSprite;>;"
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->finish()V

    .line 67
    iput-boolean v1, p0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->soundStopped:Z

    .line 70
    .end local v0    # "spriteSoundFilePath":Lorg/catrobat/catroid/content/SoundFilePathWithSprite;
    .end local v2    # "recentlyStopped":Ljava/util/Set;, "Ljava/util/Set<Lorg/catrobat/catroid/content/SoundFilePathWithSprite;>;"
    :cond_1
    return-void
.end method
