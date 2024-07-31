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
    .locals 9
    .param p0, "args"    # [Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "mf":Lcom/pdrogfer/mididroid/MidiFile;
    new-instance v1, Ljava/io/File;

    const-string v2, "example.mid"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .local v1, "input":Ljava/io/File;
    :try_start_0
    new-instance v2, Lcom/pdrogfer/mididroid/MidiFile;

    invoke-direct {v2, v1}, Lcom/pdrogfer/mididroid/MidiFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v2

    .line 32
    nop

    .line 36
    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/MidiFile;->getTracks()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pdrogfer/mididroid/MidiTrack;

    .line 40
    .local v2, "T":Lcom/pdrogfer/mididroid/MidiTrack;
    invoke-virtual {v2}, Lcom/pdrogfer/mididroid/MidiTrack;->getEvents()Ljava/util/TreeSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 41
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pdrogfer/mididroid/event/MidiEvent;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v4, "eventsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pdrogfer/mididroid/event/MidiEvent;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 45
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pdrogfer/mididroid/event/MidiEvent;

    .line 47
    .local v5, "E":Lcom/pdrogfer/mididroid/event/MidiEvent;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/pdrogfer/mididroid/event/NoteOn;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/pdrogfer/mididroid/event/NoteOff;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 49
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v5    # "E":Lcom/pdrogfer/mididroid/event/MidiEvent;
    :cond_0
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pdrogfer/mididroid/event/MidiEvent;

    .line 55
    .local v6, "E":Lcom/pdrogfer/mididroid/event/MidiEvent;
    invoke-virtual {v2, v6}, Lcom/pdrogfer/mididroid/MidiTrack;->removeEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;)Z

    .line 56
    .end local v6    # "E":Lcom/pdrogfer/mididroid/event/MidiEvent;
    goto :goto_1

    .line 59
    :cond_2
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/pdrogfer/mididroid/MidiFile;->removeTrack(I)V

    .line 62
    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/MidiFile;->getTracks()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lcom/pdrogfer/mididroid/MidiTrack;

    .line 64
    invoke-virtual {v2}, Lcom/pdrogfer/mididroid/MidiTrack;->getEvents()Ljava/util/TreeSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 65
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 67
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pdrogfer/mididroid/event/MidiEvent;

    .line 69
    .restart local v5    # "E":Lcom/pdrogfer/mididroid/event/MidiEvent;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/pdrogfer/mididroid/event/meta/Tempo;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 72
    move-object v6, v5

    check-cast v6, Lcom/pdrogfer/mididroid/event/meta/Tempo;

    .line 73
    .local v6, "tempo":Lcom/pdrogfer/mididroid/event/meta/Tempo;
    invoke-virtual {v6}, Lcom/pdrogfer/mididroid/event/meta/Tempo;->getBpm()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/pdrogfer/mididroid/event/meta/Tempo;->setBpm(F)V

    .line 75
    .end local v5    # "E":Lcom/pdrogfer/mididroid/event/MidiEvent;
    .end local v6    # "tempo":Lcom/pdrogfer/mididroid/event/meta/Tempo;
    :cond_3
    goto :goto_2

    .line 80
    :cond_4
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/pdrogfer/mididroid/MidiFile;->writeToFile(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    goto :goto_3

    .line 82
    :catch_0
    move-exception v5

    .line 84
    .local v5, "e":Ljava/io/IOException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Error writing MIDI file:"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 87
    .end local v5    # "e":Ljava/io/IOException;
    :goto_3
    return-void

    .line 27
    .end local v2    # "T":Lcom/pdrogfer/mididroid/MidiTrack;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pdrogfer/mididroid/event/MidiEvent;>;"
    .end local v4    # "eventsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pdrogfer/mididroid/event/MidiEvent;>;"
    :catch_1
    move-exception v2

    .line 29
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error parsing MIDI file:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 31
    return-void
.end method
