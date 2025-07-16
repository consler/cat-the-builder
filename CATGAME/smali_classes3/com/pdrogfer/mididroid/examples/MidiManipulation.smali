.class public Lcom/pdrogfer/mididroid/examples/MidiManipulation;
.super Ljava/lang/Object;
.source "MidiManipulation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7

    .line 21
    new-instance p0, Ljava/io/File;

    const-string v0, "example.mid"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    :try_start_0
    new-instance v0, Lcom/pdrogfer/mididroid/MidiFile;

    invoke-direct {v0, p0}, Lcom/pdrogfer/mididroid/MidiFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/MidiFile;->getTracks()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pdrogfer/mididroid/MidiTrack;

    .line 40
    invoke-virtual {v1}, Lcom/pdrogfer/mididroid/MidiTrack;->getEvents()Ljava/util/TreeSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 41
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pdrogfer/mididroid/event/MidiEvent;

    .line 47
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/pdrogfer/mididroid/event/NoteOn;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/pdrogfer/mididroid/event/NoteOff;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 49
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pdrogfer/mididroid/event/MidiEvent;

    .line 55
    invoke-virtual {v1, v3}, Lcom/pdrogfer/mididroid/MidiTrack;->removeEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;)Z

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    .line 59
    invoke-virtual {v0, v1}, Lcom/pdrogfer/mididroid/MidiFile;->removeTrack(I)V

    .line 62
    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/MidiFile;->getTracks()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pdrogfer/mididroid/MidiTrack;

    .line 64
    invoke-virtual {v1}, Lcom/pdrogfer/mididroid/MidiTrack;->getEvents()Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 65
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pdrogfer/mididroid/event/MidiEvent;

    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/pdrogfer/mididroid/event/meta/Tempo;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    check-cast v2, Lcom/pdrogfer/mididroid/event/meta/Tempo;

    .line 73
    invoke-virtual {v2}, Lcom/pdrogfer/mididroid/event/meta/Tempo;->getBpm()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/pdrogfer/mididroid/event/meta/Tempo;->setBpm(F)V

    goto :goto_2

    .line 80
    :cond_4
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/pdrogfer/mididroid/MidiFile;->writeToFile(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 84
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error writing MIDI file:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-void

    :catch_1
    move-exception p0

    .line 29
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error parsing MIDI file:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method
