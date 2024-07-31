.class public Lcom/pdrogfer/mididroid/examples/MidiFileFromScratch;
.super Ljava/lang/Object;
.source "MidiFileFromScratch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 20
    .param p0, "args"    # [Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/pdrogfer/mididroid/MidiTrack;

    invoke-direct {v0}, Lcom/pdrogfer/mididroid/MidiTrack;-><init>()V

    move-object v1, v0

    .line 20
    .local v1, "tempoTrack":Lcom/pdrogfer/mididroid/MidiTrack;
    new-instance v0, Lcom/pdrogfer/mididroid/MidiTrack;

    invoke-direct {v0}, Lcom/pdrogfer/mididroid/MidiTrack;-><init>()V

    move-object v10, v0

    .line 24
    .local v10, "noteTrack":Lcom/pdrogfer/mididroid/MidiTrack;
    new-instance v0, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;

    invoke-direct {v0}, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;-><init>()V

    move-object v11, v0

    .line 25
    .local v11, "ts":Lcom/pdrogfer/mididroid/event/meta/TimeSignature;
    const/4 v0, 0x4

    const/16 v2, 0x18

    const/16 v3, 0x8

    invoke-virtual {v11, v0, v0, v2, v3}, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->setTimeSignature(IIII)V

    .line 27
    new-instance v0, Lcom/pdrogfer/mididroid/event/meta/Tempo;

    invoke-direct {v0}, Lcom/pdrogfer/mididroid/event/meta/Tempo;-><init>()V

    move-object v12, v0

    .line 28
    .local v12, "t":Lcom/pdrogfer/mididroid/event/meta/Tempo;
    const/high16 v0, 0x43640000    # 228.0f

    invoke-virtual {v12, v0}, Lcom/pdrogfer/mididroid/event/meta/Tempo;->setBpm(F)V

    .line 30
    invoke-virtual {v1, v11}, Lcom/pdrogfer/mididroid/MidiTrack;->insertEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;)V

    .line 31
    invoke-virtual {v1, v12}, Lcom/pdrogfer/mididroid/MidiTrack;->insertEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;)V

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x50

    if-ge v0, v2, :cond_0

    .line 36
    const/4 v13, 0x0

    .local v13, "channel":I
    add-int/lit8 v14, v0, 0x1

    .local v14, "pitch":I
    const/16 v15, 0x64

    .line 37
    .local v15, "velocity":I
    new-instance v2, Lcom/pdrogfer/mididroid/event/NoteOn;

    mul-int/lit16 v3, v0, 0x1e0

    int-to-long v4, v3

    move-object v3, v2

    move v6, v13

    move v7, v14

    move v8, v15

    invoke-direct/range {v3 .. v8}, Lcom/pdrogfer/mididroid/event/NoteOn;-><init>(JIII)V

    move-object v9, v2

    .line 38
    .local v9, "on":Lcom/pdrogfer/mididroid/event/NoteOn;
    new-instance v2, Lcom/pdrogfer/mididroid/event/NoteOff;

    mul-int/lit16 v3, v0, 0x1e0

    add-int/lit8 v3, v3, 0x78

    int-to-long v4, v3

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/pdrogfer/mididroid/event/NoteOff;-><init>(JIII)V

    move-object v8, v2

    .line 40
    .local v8, "off":Lcom/pdrogfer/mididroid/event/NoteOff;
    invoke-virtual {v10, v9}, Lcom/pdrogfer/mididroid/MidiTrack;->insertEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;)V

    .line 41
    invoke-virtual {v10, v8}, Lcom/pdrogfer/mididroid/MidiTrack;->insertEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;)V

    .line 45
    add-int/lit8 v4, v14, 0x2

    mul-int/lit16 v2, v0, 0x1e0

    int-to-long v6, v2

    const-wide/16 v16, 0x78

    move-object v2, v10

    move v3, v13

    move v5, v15

    move-object/from16 v19, v8

    move-object/from16 v18, v9

    .end local v8    # "off":Lcom/pdrogfer/mididroid/event/NoteOff;
    .end local v9    # "on":Lcom/pdrogfer/mididroid/event/NoteOn;
    .local v18, "on":Lcom/pdrogfer/mididroid/event/NoteOn;
    .local v19, "off":Lcom/pdrogfer/mididroid/event/NoteOff;
    move-wide/from16 v8, v16

    invoke-virtual/range {v2 .. v9}, Lcom/pdrogfer/mididroid/MidiTrack;->insertNote(IIIJJ)V

    .line 34
    .end local v13    # "channel":I
    .end local v14    # "pitch":I
    .end local v15    # "velocity":I
    .end local v18    # "on":Lcom/pdrogfer/mididroid/event/NoteOn;
    .end local v19    # "off":Lcom/pdrogfer/mididroid/event/NoteOff;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 53
    .local v2, "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pdrogfer/mididroid/MidiTrack;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v0, Lcom/pdrogfer/mididroid/MidiFile;

    const/16 v3, 0x1e0

    invoke-direct {v0, v3, v2}, Lcom/pdrogfer/mididroid/MidiFile;-><init>(ILjava/util/ArrayList;)V

    move-object v3, v0

    .line 59
    .local v3, "midi":Lcom/pdrogfer/mididroid/MidiFile;
    new-instance v0, Ljava/io/File;

    const-string v4, "exampleout.mid"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 62
    .local v4, "output":Ljava/io/File;
    :try_start_0
    invoke-virtual {v3, v4}, Lcom/pdrogfer/mididroid/MidiFile;->writeToFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 66
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 68
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method
