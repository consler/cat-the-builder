.class public Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;
.super Ljava/lang/Object;
.source "MidiPlayer.java"


# static fields
.field public static final DRUM_CHANNEL:B = 0x9t

.field public static final MAX_CHANNELS:B = 0xft

.field private static channelCounter:B

.field private static notePlayer:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;


# instance fields
.field private channel:B

.field private handler:Landroid/os/Handler;

.field private instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

.field private paused:Z

.field private playRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private project:Lorg/catrobat/catroid/pocketmusic/note/Project;

.field private sourceFilePath:Ljava/lang/String;

.field private startTime:J

.field private startTimeOffset:J

.field private startedBySprite:Lorg/catrobat/catroid/content/Sprite;

.field private tempo:F

.field private volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    invoke-direct {v0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->notePlayer:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    .line 52
    const/4 v0, 0x0

    sput-byte v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->channelCounter:B

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/pocketmusic/note/midi/MidiException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->playRunnables:Ljava/util/List;

    .line 62
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/Project;->DEFAULT_INSTRUMENT:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    .line 71
    sget-byte v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->channelCounter:B

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    .line 74
    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 75
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    sput-byte v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->channelCounter:B

    .line 78
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->handler:Landroid/os/Handler;

    .line 80
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->reset()V

    .line 82
    sget-byte v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->channelCounter:B

    iput-byte v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->channel:B

    .line 83
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    sput-byte v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->channelCounter:B

    .line 84
    return-void

    .line 72
    :cond_1
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiException;

    const-string v1, "Number of midi channels exceeded"

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAdjustedMidiValue(Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;I)I
    .locals 6
    .param p0, "instrument"    # Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;
    .param p1, "originalMidiValue"    # I

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "preparedMidiValue":F
    const/16 v1, 0x82

    if-ge p1, v1, :cond_0

    if-lez p1, :cond_0

    .line 245
    const/high16 v1, 0x43020000    # 130.0f

    int-to-float v2, p1

    div-float v0, v1, v2

    goto :goto_0

    .line 246
    :cond_0
    if-lt p1, v1, :cond_1

    .line 247
    const/high16 v0, 0x3f800000    # 1.0f

    .line 250
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;->getLowEnd()I

    move-result v1

    .line 251
    .local v1, "start":I
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;->getHighEnd()I

    move-result v2

    .line 252
    .local v2, "end":I
    sub-int v3, v2, v1

    int-to-float v3, v3

    .line 254
    .local v3, "instrumentRange":F
    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v0

    .line 256
    .local v4, "proportion":F
    mul-float v5, v4, v3

    float-to-int v5, v5

    add-int/2addr v5, v1

    .line 257
    .local v5, "adjustedMidiValue":I
    if-ge v5, v1, :cond_2

    .line 258
    move v5, v1

    goto :goto_1

    .line 259
    :cond_2
    if-le v5, v2, :cond_3

    .line 260
    move v5, v2

    .line 263
    :cond_3
    :goto_1
    return v5
.end method

.method public static getNotePlayer()Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;
    .locals 1

    .line 308
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->notePlayer:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    return-object v0
.end method

.method public static resetChannelCounter()V
    .locals 1

    .line 345
    const/4 v0, 0x0

    sput-byte v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->channelCounter:B

    .line 346
    return-void
.end method

.method private start(Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;)Z
    .locals 28
    .param p1, "instrument"    # Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->project:Lorg/catrobat/catroid/pocketmusic/note/Project;

    if-nez v2, :cond_0

    .line 122
    const/4 v2, 0x0

    return v2

    .line 125
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->stopPlaying()V

    .line 127
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    sget-object v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->notePlayer:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    invoke-virtual {v2}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->start()V

    .line 130
    :cond_1
    sget-object v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->notePlayer:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    iget-byte v3, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->channel:B

    invoke-virtual {v2, v3, v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->setInstrument(BLorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;)V

    .line 131
    sget-object v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->notePlayer:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    iget-byte v3, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->channel:B

    iget v4, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->volume:F

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->setVolume(BI)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->getPlayLengthInMilliseconds()J

    move-result-wide v2

    .line 135
    .local v2, "playLength":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->startTime:J

    .line 137
    iget-object v4, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->project:Lorg/catrobat/catroid/pocketmusic/note/Project;

    invoke-virtual {v4}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getTrackNames()Ljava/util/Set;

    move-result-object v4

    .line 138
    .local v4, "trackNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v15, 0x1

    if-eqz v5, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Ljava/lang/String;

    .line 139
    .local v13, "trackName":Ljava/lang/String;
    iget-object v5, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->project:Lorg/catrobat/catroid/pocketmusic/note/Project;

    invoke-virtual {v5, v13}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getTrack(Ljava/lang/String;)Lorg/catrobat/catroid/pocketmusic/note/Track;

    move-result-object v12

    .line 141
    .local v12, "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    invoke-virtual {v12}, Lorg/catrobat/catroid/pocketmusic/note/Track;->getSortedTicks()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 142
    .local v10, "tick":J
    iget-wide v5, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->startTimeOffset:J

    cmp-long v5, v10, v5

    if-gez v5, :cond_2

    .line 143
    goto :goto_1

    .line 145
    :cond_2
    invoke-virtual {v12, v10, v11}, Lorg/catrobat/catroid/pocketmusic/note/Track;->getNoteEventsForTick(J)Ljava/util/List;

    move-result-object v17

    .line 146
    .local v17, "noteEventList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v19, v5

    check-cast v19, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;

    .line 148
    .local v19, "noteEvent":Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;
    invoke-virtual/range {v19 .. v19}, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->getNoteName()Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v5

    invoke-virtual {v5}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->getMidi()I

    move-result v5

    invoke-static {v1, v5}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->getAdjustedMidiValue(Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;I)I

    move-result v20

    .line 149
    .local v20, "adjustedMidiValue":I
    invoke-virtual/range {v19 .. v19}, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->isNoteOn()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 150
    new-instance v21, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;

    sget-object v6, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->NOTE_ON:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    invoke-static/range {v20 .. v20}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->getNoteNameFromMidiValue(I)Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v7

    iget-object v8, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->handler:Landroid/os/Handler;

    sget-object v22, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->notePlayer:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    const/16 v23, 0x0

    iget-byte v9, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->channel:B

    move-object/from16 v5, v21

    move-object/from16 v24, v8

    move/from16 v25, v9

    move-wide v8, v2

    move-wide/from16 v26, v10

    .end local v10    # "tick":J
    .local v26, "tick":J
    move-object/from16 v10, v24

    move-object/from16 v11, v22

    move-object/from16 v22, v12

    .end local v12    # "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    .local v22, "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    move-object/from16 v12, v23

    move-object/from16 v23, v13

    .end local v13    # "trackName":Ljava/lang/String;
    .local v23, "trackName":Ljava/lang/String;
    move/from16 v13, v25

    invoke-direct/range {v5 .. v13}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;-><init>(Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;Lorg/catrobat/catroid/pocketmusic/note/NoteName;JLandroid/os/Handler;Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;Lorg/catrobat/catroid/pocketmusic/ui/PianoView;B)V

    .line 152
    .local v5, "runnable":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;
    invoke-virtual {v5, v15}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->setManualNoteOff(Z)V

    goto :goto_3

    .line 154
    .end local v5    # "runnable":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;
    .end local v22    # "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    .end local v23    # "trackName":Ljava/lang/String;
    .end local v26    # "tick":J
    .restart local v10    # "tick":J
    .restart local v12    # "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    .restart local v13    # "trackName":Ljava/lang/String;
    :cond_3
    move-wide/from16 v26, v10

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    .end local v10    # "tick":J
    .end local v12    # "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    .end local v13    # "trackName":Ljava/lang/String;
    .restart local v22    # "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    .restart local v23    # "trackName":Ljava/lang/String;
    .restart local v26    # "tick":J
    new-instance v21, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;

    sget-object v6, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->NOTE_OFF:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    invoke-static/range {v20 .. v20}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->getNoteNameFromMidiValue(I)Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v7

    iget-object v10, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->handler:Landroid/os/Handler;

    sget-object v11, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->notePlayer:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    const/4 v12, 0x0

    iget-byte v13, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->channel:B

    move-object/from16 v5, v21

    move-wide v8, v2

    invoke-direct/range {v5 .. v13}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;-><init>(Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;Lorg/catrobat/catroid/pocketmusic/note/NoteName;JLandroid/os/Handler;Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;Lorg/catrobat/catroid/pocketmusic/ui/PianoView;B)V

    .line 157
    .restart local v5    # "runnable":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;
    :goto_3
    iget-wide v6, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->startTime:J

    move-wide/from16 v8, v26

    .end local v26    # "tick":J
    .local v8, "tick":J
    long-to-float v10, v8

    iget v11, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->tempo:F

    const/high16 v12, 0x42700000    # 60.0f

    div-float/2addr v11, v12

    div-float/2addr v10, v11

    float-to-long v10, v10

    add-long/2addr v6, v10

    invoke-virtual {v5, v6, v7}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->setScheduledTime(J)V

    .line 158
    iget-object v6, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->handler:Landroid/os/Handler;

    long-to-float v7, v8

    iget v10, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->tempo:F

    div-float/2addr v10, v12

    div-float/2addr v7, v10

    float-to-long v10, v7

    invoke-virtual {v6, v5, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    iget-object v6, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->playRunnables:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v5    # "runnable":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;
    .end local v19    # "noteEvent":Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;
    .end local v20    # "adjustedMidiValue":I
    move-wide v10, v8

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    goto/16 :goto_2

    .line 146
    .end local v8    # "tick":J
    .end local v22    # "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    .end local v23    # "trackName":Ljava/lang/String;
    .restart local v10    # "tick":J
    .restart local v12    # "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    .restart local v13    # "trackName":Ljava/lang/String;
    :cond_4
    move-wide v8, v10

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    .line 161
    .end local v10    # "tick":J
    .end local v12    # "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    .end local v13    # "trackName":Ljava/lang/String;
    .end local v17    # "noteEventList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;>;"
    .restart local v22    # "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    .restart local v23    # "trackName":Ljava/lang/String;
    goto/16 :goto_1

    .line 141
    .end local v22    # "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    .end local v23    # "trackName":Ljava/lang/String;
    .restart local v12    # "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    .restart local v13    # "trackName":Ljava/lang/String;
    :cond_5
    move-object/from16 v22, v12

    move-object/from16 v23, v13

    .line 162
    .end local v12    # "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    .end local v13    # "trackName":Ljava/lang/String;
    goto/16 :goto_0

    .line 163
    :cond_6
    return v15
.end method


# virtual methods
.method public getChannel()B
    .locals 1

    .line 336
    iget-byte v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->channel:B

    return v0
.end method

.method public getCurrentPosition()J
    .locals 4

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 353
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getInstrument()Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    return-object v0
.end method

.method public getPathToSoundFile()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->sourceFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayLengthInMilliseconds()J
    .locals 2

    .line 340
    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->tempo:F

    const v1, 0x476a6000    # 60000.0f

    div-float/2addr v1, v0

    float-to-long v0, v1

    return-wide v0
.end method

.method public getPlayRunnables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;",
            ">;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->playRunnables:Ljava/util/List;

    return-object v0
.end method

.method public getStartTimeOffset()J
    .locals 2

    .line 328
    iget-wide v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->startTimeOffset:J

    return-wide v0
.end method

.method public getStartedBySprite()Lorg/catrobat/catroid/content/Sprite;
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->startedBySprite:Lorg/catrobat/catroid/content/Sprite;

    return-object v0
.end method

.method public getTempo()F
    .locals 1

    .line 316
    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->tempo:F

    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 320
    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->volume:F

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 284
    iget-boolean v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->paused:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 280
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 19

    .line 200
    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 201
    .local v1, "currentTime":J
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->playRunnables:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 202
    .local v3, "playRunnablesCopy":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;

    .line 203
    .local v5, "r":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;
    invoke-virtual {v5}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->getScheduledTime()J

    move-result-wide v6

    cmp-long v6, v6, v1

    if-lez v6, :cond_0

    .line 204
    iget-object v6, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 206
    :cond_0
    iget-object v6, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->playRunnables:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 208
    :goto_1
    iget-object v6, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->handler:Landroid/os/Handler;

    new-instance v15, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;

    sget-object v8, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->NOTE_OFF:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    invoke-virtual {v5}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->getNoteName()Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v9

    const-wide/16 v10, 0x0

    iget-object v12, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->handler:Landroid/os/Handler;

    sget-object v13, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->notePlayer:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    const/4 v14, 0x0

    iget-byte v7, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->channel:B

    move/from16 v16, v7

    move-object v7, v15

    move-wide/from16 v17, v1

    move-object v1, v15

    .end local v1    # "currentTime":J
    .local v17, "currentTime":J
    move/from16 v15, v16

    invoke-direct/range {v7 .. v15}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;-><init>(Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;Lorg/catrobat/catroid/pocketmusic/note/NoteName;JLandroid/os/Handler;Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;Lorg/catrobat/catroid/pocketmusic/ui/PianoView;B)V

    invoke-virtual {v6, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    .end local v5    # "r":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;
    move-wide/from16 v1, v17

    goto :goto_0

    .line 211
    .end local v17    # "currentTime":J
    .restart local v1    # "currentTime":J
    :cond_1
    move-wide/from16 v17, v1

    .end local v1    # "currentTime":J
    .restart local v17    # "currentTime":J
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->paused:Z

    .line 212
    return-void
.end method

.method playDrumForBeats(Lorg/catrobat/catroid/pocketmusic/note/Drum;F)V
    .locals 13
    .param p1, "drum"    # Lorg/catrobat/catroid/pocketmusic/note/Drum;
    .param p2, "beats"    # F

    .line 167
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->stopPlaying()V

    .line 169
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->notePlayer:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->start()V

    .line 172
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->notePlayer:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    const/16 v1, 0x9

    iget v2, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->volume:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->setVolume(BI)V

    .line 173
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->getPlayLengthInMilliseconds()J

    move-result-wide v0

    .line 175
    .local v0, "playLength":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->startTime:J

    .line 177
    new-instance v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;

    sget-object v5, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->NOTE_ON:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/note/Drum;->getProgram()I

    move-result v3

    invoke-static {v3}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->getNoteNameFromMidiValue(I)Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v6

    const-wide/16 v7, 0x0

    iget-object v9, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->handler:Landroid/os/Handler;

    sget-object v10, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->notePlayer:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    const/4 v11, 0x0

    const/16 v12, 0x9

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;-><init>(Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;Lorg/catrobat/catroid/pocketmusic/note/NoteName;JLandroid/os/Handler;Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;Lorg/catrobat/catroid/pocketmusic/ui/PianoView;B)V

    .line 179
    .local v2, "runnableOn":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->setManualNoteOff(Z)V

    .line 180
    iget-wide v3, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->startTime:J

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->setScheduledTime(J)V

    .line 181
    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->playRunnables:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v3, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;

    sget-object v5, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->NOTE_OFF:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/note/Drum;->getProgram()I

    move-result v4

    invoke-static {v4}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->getNoteNameFromMidiValue(I)Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v6

    iget-object v9, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->handler:Landroid/os/Handler;

    sget-object v10, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->notePlayer:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;-><init>(Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;Lorg/catrobat/catroid/pocketmusic/note/NoteName;JLandroid/os/Handler;Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;Lorg/catrobat/catroid/pocketmusic/ui/PianoView;B)V

    .line 186
    .local v3, "runnableOff":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;
    iget-wide v4, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->startTime:J

    long-to-float v6, v0

    mul-float/2addr v6, p2

    float-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->setScheduledTime(J)V

    .line 187
    iget-object v4, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->handler:Landroid/os/Handler;

    long-to-float v5, v0

    mul-float/2addr v5, p2

    float-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    iget-object v4, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->playRunnables:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    return-void
.end method

.method public playNoteForBeats(IF)V
    .locals 16
    .param p1, "midiValue"    # I
    .param p2, "beats"    # F

    .line 215
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->stopPlaying()V

    .line 217
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    sget-object v1, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->notePlayer:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->start()V

    .line 220
    :cond_0
    sget-object v1, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->notePlayer:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    iget-byte v2, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->channel:B

    iget-object v3, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    invoke-virtual {v1, v2, v3}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->setInstrument(BLorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;)V

    .line 221
    sget-object v1, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->notePlayer:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    iget-byte v2, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->channel:B

    iget v3, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->volume:F

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->setVolume(BI)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->getPlayLengthInMilliseconds()J

    move-result-wide v1

    .line 224
    .local v1, "playLength":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->startTime:J

    .line 226
    iget-object v3, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    move/from16 v4, p1

    invoke-static {v3, v4}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->getAdjustedMidiValue(Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;I)I

    move-result v3

    .line 228
    .local v3, "adjustedMidiValue":I
    new-instance v14, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;

    sget-object v6, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->NOTE_ON:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    invoke-static {v3}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->getNoteNameFromMidiValue(I)Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v7

    const-wide/16 v8, 0x0

    iget-object v10, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->handler:Landroid/os/Handler;

    sget-object v11, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->notePlayer:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    const/4 v12, 0x0

    iget-byte v13, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->channel:B

    move-object v5, v14

    invoke-direct/range {v5 .. v13}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;-><init>(Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;Lorg/catrobat/catroid/pocketmusic/note/NoteName;JLandroid/os/Handler;Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;Lorg/catrobat/catroid/pocketmusic/ui/PianoView;B)V

    .line 230
    .local v5, "runnableOn":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->setManualNoteOff(Z)V

    .line 231
    iget-wide v6, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->startTime:J

    invoke-virtual {v5, v6, v7}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->setScheduledTime(J)V

    .line 232
    iget-object v6, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    iget-object v6, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->playRunnables:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v6, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;

    sget-object v8, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->NOTE_OFF:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    invoke-static {v3}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->getNoteNameFromMidiValue(I)Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v9

    const-wide/16 v10, 0x0

    iget-object v12, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->handler:Landroid/os/Handler;

    sget-object v13, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->notePlayer:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    const/4 v14, 0x0

    iget-byte v15, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->channel:B

    move-object v7, v6

    invoke-direct/range {v7 .. v15}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;-><init>(Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;Lorg/catrobat/catroid/pocketmusic/note/NoteName;JLandroid/os/Handler;Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;Lorg/catrobat/catroid/pocketmusic/ui/PianoView;B)V

    .line 237
    .local v6, "runnableOff":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;
    iget-wide v7, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->startTime:J

    long-to-float v9, v1

    mul-float v9, v9, p2

    float-to-long v9, v9

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->setScheduledTime(J)V

    .line 238
    iget-object v7, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->handler:Landroid/os/Handler;

    long-to-float v8, v1

    mul-float v8, v8, p2

    float-to-long v8, v8

    invoke-virtual {v7, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 239
    iget-object v7, v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->playRunnables:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    return-void
.end method

.method public reset()V
    .locals 2

    .line 87
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->playRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->project:Lorg/catrobat/catroid/pocketmusic/note/Project;

    .line 89
    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->startedBySprite:Lorg/catrobat/catroid/content/Sprite;

    .line 90
    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->sourceFilePath:Ljava/lang/String;

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->startTimeOffset:J

    .line 92
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/Project;->DEFAULT_INSTRUMENT:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    .line 93
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->tempo:F

    .line 94
    const/high16 v0, 0x428c0000    # 70.0f

    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->volume:F

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->paused:Z

    .line 96
    return-void
.end method

.method public resume()V
    .locals 11

    .line 267
    iget-boolean v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->paused:Z

    if-eqz v0, :cond_1

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 269
    .local v0, "currentTime":J
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->playRunnables:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;

    invoke-virtual {v2}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->getScheduledTime()J

    move-result-wide v4

    .line 270
    .local v4, "referenceTime":J
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->playRunnables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;

    .line 271
    .local v6, "r":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;
    invoke-virtual {v6}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->getScheduledTime()J

    move-result-wide v7

    sub-long/2addr v7, v4

    .line 272
    .local v7, "tick":J
    iget-object v9, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->handler:Landroid/os/Handler;

    invoke-virtual {v9, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 273
    add-long v9, v0, v7

    invoke-virtual {v6, v9, v10}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->setScheduledTime(J)V

    .line 274
    .end local v6    # "r":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;
    .end local v7    # "tick":J
    goto :goto_0

    .line 275
    :cond_0
    iput-boolean v3, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->paused:Z

    .line 277
    .end local v0    # "currentTime":J
    .end local v4    # "referenceTime":J
    :cond_1
    return-void
.end method

.method public seekTo(J)Z
    .locals 1
    .param p1, "startTimeInMilSeconds"    # J

    .line 110
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->project:Lorg/catrobat/catroid/pocketmusic/note/Project;

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    return v0

    .line 113
    :cond_0
    iput-wide p1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->startTimeOffset:J

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public setInstrument(Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;)V
    .locals 0
    .param p1, "instrument"    # Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    .line 288
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    .line 289
    return-void
.end method

.method public setPathToSoundFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "sourceFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/catrobat/catroid/pocketmusic/note/midi/MidiException;
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->sourceFilePath:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "file":Ljava/io/File;
    new-instance v1, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;

    invoke-direct {v1}, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;-><init>()V

    .line 102
    .local v1, "converter":Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;
    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;->convertMidiFileToProject(Ljava/io/File;)Lorg/catrobat/catroid/pocketmusic/note/Project;

    move-result-object v2

    iput-object v2, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->project:Lorg/catrobat/catroid/pocketmusic/note/Project;

    .line 103
    return-void
.end method

.method public setProject(Lorg/catrobat/catroid/pocketmusic/note/Project;)V
    .locals 0
    .param p1, "project"    # Lorg/catrobat/catroid/pocketmusic/note/Project;

    .line 349
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->project:Lorg/catrobat/catroid/pocketmusic/note/Project;

    .line 350
    return-void
.end method

.method public setStartedBySprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "startedBySprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 106
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->startedBySprite:Lorg/catrobat/catroid/content/Sprite;

    .line 107
    return-void
.end method

.method public setTempo(F)V
    .locals 0
    .param p1, "tempo"    # F

    .line 292
    iput p1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->tempo:F

    .line 293
    return-void
.end method

.method public setVolume(F)V
    .locals 0
    .param p1, "volume"    # F

    .line 296
    iput p1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->volume:F

    .line 297
    return-void
.end method

.method public start()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->start(Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;)Z

    move-result v0

    return v0
.end method

.method public stopPlaying()V
    .locals 13

    .line 192
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->playRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;

    .line 193
    .local v1, "r":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->handler:Landroid/os/Handler;

    new-instance v12, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;

    sget-object v4, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->NOTE_OFF:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->getNoteName()Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v5

    const-wide/16 v6, 0x0

    iget-object v8, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->handler:Landroid/os/Handler;

    sget-object v9, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->notePlayer:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    const/4 v10, 0x0

    iget-byte v11, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->channel:B

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;-><init>(Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;Lorg/catrobat/catroid/pocketmusic/note/NoteName;JLandroid/os/Handler;Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;Lorg/catrobat/catroid/pocketmusic/ui/PianoView;B)V

    invoke-virtual {v2, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    .end local v1    # "r":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;
    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method
