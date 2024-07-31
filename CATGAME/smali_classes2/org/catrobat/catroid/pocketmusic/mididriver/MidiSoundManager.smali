.class public Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;
.super Ljava/lang/Object;
.source "MidiSoundManager.java"


# static fields
.field private static final INSTANCE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

.field public static final MAX_MIDI_PLAYERS:I = 0xf

.field private static final MAX_TEMPO_PERCENT:I = 0x1f4

.field private static final MIN_TEMPO_PERCENT:I = 0x14

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

.field private final midiPlayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;",
            ">;"
        }
    .end annotation
.end field

.field pausedUntil:J

.field private startedSoundfilePaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/catrobat/catroid/content/SoundFilePathWithSprite;",
            ">;"
        }
    .end annotation
.end field

.field private tempo:F

.field private volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    invoke-direct {v0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->INSTANCE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/Project;->DEFAULT_INSTRUMENT:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    .line 44
    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->tempo:F

    .line 45
    const/high16 v0, 0x428c0000    # 70.0f

    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->volume:F

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->midiPlayers:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->startedSoundfilePaths:Ljava/util/Set;

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->pausedUntil:J

    .line 63
    return-void
.end method

.method private getAvailableMidiPlayer()Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;
    .locals 4

    .line 110
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->midiPlayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;

    .line 111
    .local v1, "midiPlayer":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;
    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->reset()V

    .line 113
    return-object v1

    .line 115
    .end local v1    # "midiPlayer":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;
    :cond_0
    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->midiPlayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 120
    :try_start_0
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;

    invoke-direct {v0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;-><init>()V
    :try_end_0
    .catch Lorg/catrobat/catroid/pocketmusic/note/midi/MidiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .local v0, "midiPlayer":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;
    nop

    .line 126
    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->midiPlayers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    return-object v0

    .line 121
    .end local v0    # "midiPlayer":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "exception":Lorg/catrobat/catroid/pocketmusic/note/midi/MidiException;
    sget-object v1, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->TAG:Ljava/lang/String;

    const-string v3, "No midi channels available"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    return-object v2

    .line 129
    .end local v0    # "exception":Lorg/catrobat/catroid/pocketmusic/note/midi/MidiException;
    :cond_2
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->TAG:Ljava/lang/String;

    const-string v1, "All MidiPlayer instances in use"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-object v2
.end method

.method public static getInstance()Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;
    .locals 1

    .line 66
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->INSTANCE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    return-object v0
.end method


# virtual methods
.method public getDurationForBeats(F)J
    .locals 2
    .param p1, "beats"    # F

    .line 171
    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->tempo:F

    const v1, 0x476a6000    # 60000.0f

    div-float/2addr v1, v0

    mul-float/2addr v1, p1

    float-to-long v0, v1

    return-wide v0
.end method

.method public getInstrument()Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    return-object v0
.end method

.method public getMidiPlayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->midiPlayers:Ljava/util/List;

    return-object v0
.end method

.method public getStartedSoundfilePaths()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/catrobat/catroid/content/SoundFilePathWithSprite;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->startedSoundfilePaths:Ljava/util/Set;

    return-object v0
.end method

.method public getTempo()F
    .locals 1

    .line 211
    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->tempo:F

    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 232
    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->volume:F

    return v0
.end method

.method public isSoundInSpritePlaying(Lorg/catrobat/catroid/content/Sprite;Ljava/lang/String;)Z
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "soundFilePath"    # Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->midiPlayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;

    .line 184
    .local v1, "midiPlayer":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;
    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->getStartedBySprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 185
    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->getPathToSoundFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    const/4 v0, 0x1

    return v0

    .line 188
    .end local v1    # "midiPlayer":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;
    :cond_0
    goto :goto_0

    .line 189
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 3

    .line 151
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->midiPlayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;

    .line 152
    .local v1, "midiPlayer":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;
    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->pause()V

    goto :goto_1

    .line 155
    :cond_0
    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->reset()V

    .line 157
    .end local v1    # "midiPlayer":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;
    :goto_1
    goto :goto_0

    .line 158
    :cond_1
    return-void
.end method

.method public playDrumForBeats(Lorg/catrobat/catroid/pocketmusic/note/Drum;FLorg/catrobat/catroid/content/Sprite;)V
    .locals 4
    .param p1, "drum"    # Lorg/catrobat/catroid/pocketmusic/note/Drum;
    .param p2, "beats"    # F
    .param p3, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 96
    invoke-direct {p0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->getAvailableMidiPlayer()Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;

    move-result-object v0

    .line 97
    .local v0, "midiPlayer":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;
    if-eqz v0, :cond_0

    .line 99
    :try_start_0
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->setStartedBySprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 100
    iget v1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->tempo:F

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->setTempo(F)V

    .line 101
    iget v1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->volume:F

    const/high16 v2, 0x42fe0000    # 127.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->setVolume(F)V

    .line 102
    invoke-virtual {v0, p1, p2}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->playDrumForBeats(Lorg/catrobat/catroid/pocketmusic/note/Drum;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "exception":Ljava/lang/Exception;
    sget-object v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->TAG:Ljava/lang/String;

    const-string v3, "Couldn\'t play drums"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .end local v1    # "exception":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public playNoteForBeats(IF)V
    .locals 3
    .param p1, "midiValue"    # I
    .param p2, "beats"    # F

    .line 161
    invoke-direct {p0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->getAvailableMidiPlayer()Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;

    move-result-object v0

    .line 162
    .local v0, "midiPlayer":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;
    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->setInstrument(Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;)V

    .line 164
    iget v1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->tempo:F

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->setTempo(F)V

    .line 165
    iget v1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->volume:F

    const/high16 v2, 0x42fe0000    # 127.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->setVolume(F)V

    .line 166
    invoke-virtual {v0, p1, p2}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->playNoteForBeats(IF)V

    .line 168
    :cond_0
    return-void
.end method

.method public playSoundFile(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;)V
    .locals 1
    .param p1, "soundFilePath"    # Ljava/lang/String;
    .param p2, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->playSoundFileWithStartTime(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;I)V

    .line 71
    return-void
.end method

.method public playSoundFileWithStartTime(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;I)V
    .locals 7
    .param p1, "soundFilePath"    # Ljava/lang/String;
    .param p2, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p3, "startTimeInMilSeconds"    # I

    .line 74
    invoke-direct {p0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->getAvailableMidiPlayer()Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;

    move-result-object v0

    .line 75
    .local v0, "midiPlayer":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;
    if-eqz v0, :cond_1

    .line 77
    :try_start_0
    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->setStartedBySprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 78
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->setPathToSoundFile(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->setInstrument(Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;)V

    .line 80
    iget v1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->tempo:F

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->setTempo(F)V

    .line 81
    iget v1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->volume:F

    const/high16 v2, 0x42fe0000    # 127.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->setVolume(F)V

    .line 82
    iget-wide v1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->pausedUntil:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v5, p3

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 83
    iget-wide v1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->pausedUntil:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    int-to-long v3, p3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->seekTo(J)Z

    goto :goto_0

    .line 85
    :cond_0
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->seekTo(J)Z

    .line 87
    :goto_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->start()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_1

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "exception":Ljava/lang/Exception;
    sget-object v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->TAG:Ljava/lang/String;

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

    .line 91
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->startedSoundfilePaths:Ljava/util/Set;

    new-instance v2, Lorg/catrobat/catroid/content/SoundFilePathWithSprite;

    invoke-direct {v2, p1, p2}, Lorg/catrobat/catroid/content/SoundFilePathWithSprite;-><init>(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    .line 228
    const/high16 v0, 0x42700000    # 60.0f

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->setTempo(F)V

    .line 229
    return-void
.end method

.method public resume()V
    .locals 3

    .line 175
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->midiPlayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;

    .line 176
    .local v1, "midiPlayer":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;
    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->resume()V

    .line 179
    .end local v1    # "midiPlayer":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;
    :cond_0
    goto :goto_0

    .line 180
    :cond_1
    return-void
.end method

.method public setInstrument(Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;)V
    .locals 0
    .param p1, "instrumentParam"    # Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    .line 193
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    .line 194
    return-void
.end method

.method public setTempo(F)V
    .locals 2
    .param p1, "tempo"    # F

    .line 201
    const/high16 v0, 0x43fa0000    # 500.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 202
    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->tempo:F

    goto :goto_0

    .line 203
    :cond_0
    const/high16 v0, 0x41a00000    # 20.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    .line 204
    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->tempo:F

    goto :goto_0

    .line 206
    :cond_1
    iput p1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->tempo:F

    .line 208
    :goto_0
    return-void
.end method

.method public setVolume(F)V
    .locals 5
    .param p1, "volume"    # F

    .line 215
    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 216
    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->volume:F

    goto :goto_0

    .line 217
    :cond_0
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    .line 218
    iput v1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->volume:F

    goto :goto_0

    .line 220
    :cond_1
    iput p1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->volume:F

    .line 222
    :goto_0
    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->midiPlayers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;

    .line 223
    .local v2, "midiPlayer":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;
    iget v3, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->volume:F

    const/high16 v4, 0x42fe0000    # 127.0f

    mul-float/2addr v3, v4

    div-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->setVolume(F)V

    .line 224
    .end local v2    # "midiPlayer":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;
    goto :goto_1

    .line 225
    :cond_2
    return-void
.end method

.method public stopAllSounds()V
    .locals 3

    .line 143
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->midiPlayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;

    .line 144
    .local v1, "midiPlayer":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;
    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->stopPlaying()V

    .line 147
    .end local v1    # "midiPlayer":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;
    :cond_0
    goto :goto_0

    .line 148
    :cond_1
    return-void
.end method

.method public stopSameSoundInSprite(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;)V
    .locals 3
    .param p1, "pathToSoundFile"    # Ljava/lang/String;
    .param p2, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 134
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->midiPlayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;

    .line 135
    .local v1, "midiPlayer":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;
    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->getStartedBySprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 136
    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->getPathToSoundFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->stopPlaying()V

    .line 139
    .end local v1    # "midiPlayer":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;
    :cond_0
    goto :goto_0

    .line 140
    :cond_1
    return-void
.end method
