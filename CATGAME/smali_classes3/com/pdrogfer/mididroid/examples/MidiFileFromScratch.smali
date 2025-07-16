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
    .locals 15

    .line 19
    new-instance p0, Lcom/pdrogfer/mididroid/MidiTrack;

    invoke-direct {p0}, Lcom/pdrogfer/mididroid/MidiTrack;-><init>()V

    .line 20
    new-instance v8, Lcom/pdrogfer/mididroid/MidiTrack;

    invoke-direct {v8}, Lcom/pdrogfer/mididroid/MidiTrack;-><init>()V

    .line 24
    new-instance v0, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;

    invoke-direct {v0}, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;-><init>()V

    const/16 v1, 0x18

    const/16 v2, 0x8

    const/4 v3, 0x4

    .line 25
    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->setTimeSignature(IIII)V

    .line 27
    new-instance v1, Lcom/pdrogfer/mididroid/event/meta/Tempo;

    invoke-direct {v1}, Lcom/pdrogfer/mididroid/event/meta/Tempo;-><init>()V

    const/high16 v2, 0x43640000    # 228.0f

    .line 28
    invoke-virtual {v1, v2}, Lcom/pdrogfer/mididroid/event/meta/Tempo;->setBpm(F)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/pdrogfer/mididroid/MidiTrack;->insertEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;)V

    .line 31
    invoke-virtual {p0, v1}, Lcom/pdrogfer/mididroid/MidiTrack;->insertEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x50

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    add-int/lit8 v9, v0, 0x1

    const/16 v10, 0x64

    .line 37
    new-instance v11, Lcom/pdrogfer/mididroid/event/NoteOn;

    mul-int/lit16 v0, v0, 0x1e0

    int-to-long v12, v0

    const/4 v5, 0x0

    const/16 v7, 0x64

    move-object v2, v11

    move-wide v3, v12

    move v6, v9

    invoke-direct/range {v2 .. v7}, Lcom/pdrogfer/mididroid/event/NoteOn;-><init>(JIII)V

    .line 38
    new-instance v14, Lcom/pdrogfer/mididroid/event/NoteOff;

    add-int/lit8 v0, v0, 0x78

    int-to-long v3, v0

    const/4 v7, 0x0

    move-object v2, v14

    invoke-direct/range {v2 .. v7}, Lcom/pdrogfer/mididroid/event/NoteOff;-><init>(JIII)V

    .line 40
    invoke-virtual {v8, v11}, Lcom/pdrogfer/mididroid/MidiTrack;->insertEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;)V

    .line 41
    invoke-virtual {v8, v14}, Lcom/pdrogfer/mididroid/MidiTrack;->insertEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;)V

    add-int/lit8 v2, v9, 0x2

    const-wide/16 v6, 0x78

    move-object v0, v8

    move v3, v10

    move-wide v4, v12

    .line 45
    invoke-virtual/range {v0 .. v7}, Lcom/pdrogfer/mididroid/MidiTrack;->insertNote(IIIJJ)V

    move v0, v9

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance p0, Lcom/pdrogfer/mididroid/MidiFile;

    const/16 v1, 0x1e0

    invoke-direct {p0, v1, v0}, Lcom/pdrogfer/mididroid/MidiFile;-><init>(ILjava/util/ArrayList;)V

    .line 59
    new-instance v0, Ljava/io/File;

    const-string v1, "exampleout.mid"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/pdrogfer/mididroid/MidiFile;->writeToFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 66
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
