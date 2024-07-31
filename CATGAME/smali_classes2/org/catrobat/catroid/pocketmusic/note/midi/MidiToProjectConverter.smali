.class public Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;
.super Ljava/lang/Object;
.source "MidiToProjectConverter.java"


# instance fields
.field private beat:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

.field private beatsPerMinute:I

.field private trackNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/pocketmusic/note/Track;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0x3c

    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;->beatsPerMinute:I

    .line 59
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/Project;->DEFAULT_BEAT:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;->beat:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;->tracks:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;->trackNames:Ljava/util/List;

    .line 62
    return-void
.end method

.method private convertMidi(Ljava/lang/String;Lcom/pdrogfer/mididroid/MidiFile;)Lorg/catrobat/catroid/pocketmusic/note/Project;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "midi"    # Lcom/pdrogfer/mididroid/MidiFile;

    .line 97
    invoke-virtual {p2}, Lcom/pdrogfer/mididroid/MidiFile;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pdrogfer/mididroid/MidiTrack;

    .line 98
    .local v1, "midiTrack":Lcom/pdrogfer/mididroid/MidiTrack;
    invoke-direct {p0, v1}, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;->createTrack(Lcom/pdrogfer/mididroid/MidiTrack;)V

    .line 99
    .end local v1    # "midiTrack":Lcom/pdrogfer/mididroid/MidiTrack;
    goto :goto_0

    .line 101
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/Project;

    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;->beat:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    iget v2, p0, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;->beatsPerMinute:I

    invoke-direct {v0, p1, v1, v2}, Lorg/catrobat/catroid/pocketmusic/note/Project;-><init>(Ljava/lang/String;Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;I)V

    .line 103
    .local v0, "project":Lorg/catrobat/catroid/pocketmusic/note/Project;
    const/4 v1, 0x0

    .line 105
    .local v1, "i":I
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;->tracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/pocketmusic/note/Track;

    .line 106
    .local v3, "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/note/Track;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 107
    iget-object v4, p0, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;->trackNames:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 108
    .local v4, "trackName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 109
    invoke-virtual {v0, v4, v3}, Lorg/catrobat/catroid/pocketmusic/note/Project;->putTrack(Ljava/lang/String;Lorg/catrobat/catroid/pocketmusic/note/Track;)V

    .line 111
    .end local v3    # "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    .end local v4    # "trackName":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 113
    :cond_2
    return-object v0
.end method

.method private createTrack(Lcom/pdrogfer/mididroid/MidiTrack;)V
    .locals 10
    .param p1, "midiTrack"    # Lcom/pdrogfer/mididroid/MidiTrack;

    .line 117
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;->getInstrumentFromMidiTrack(Lcom/pdrogfer/mididroid/MidiTrack;)Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    move-result-object v0

    .line 118
    .local v0, "instrument":Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;
    new-instance v1, Lorg/catrobat/catroid/pocketmusic/note/Track;

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;->VIOLIN:Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    invoke-direct {v1, v2, v0}, Lorg/catrobat/catroid/pocketmusic/note/Track;-><init>(Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;)V

    .line 119
    .local v1, "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/MidiTrack;->getEvents()Ljava/util/TreeSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 121
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pdrogfer/mididroid/event/MidiEvent;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 122
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pdrogfer/mididroid/event/MidiEvent;

    .line 124
    .local v3, "midiEvent":Lcom/pdrogfer/mididroid/event/MidiEvent;
    instance-of v4, v3, Lcom/pdrogfer/mididroid/event/meta/TrackName;

    if-eqz v4, :cond_0

    .line 125
    move-object v4, v3

    check-cast v4, Lcom/pdrogfer/mididroid/event/meta/TrackName;

    .line 126
    .local v4, "trackNameEvent":Lcom/pdrogfer/mididroid/event/meta/TrackName;
    iget-object v5, p0, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;->trackNames:Ljava/util/List;

    invoke-virtual {v4}, Lcom/pdrogfer/mididroid/event/meta/TrackName;->getTrackName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v4    # "trackNameEvent":Lcom/pdrogfer/mididroid/event/meta/TrackName;
    :cond_0
    instance-of v4, v3, Lcom/pdrogfer/mididroid/event/NoteOn;

    if-eqz v4, :cond_1

    .line 129
    move-object v4, v3

    check-cast v4, Lcom/pdrogfer/mididroid/event/NoteOn;

    .line 130
    .local v4, "noteOn":Lcom/pdrogfer/mididroid/event/NoteOn;
    invoke-virtual {v4}, Lcom/pdrogfer/mididroid/event/NoteOn;->getTick()J

    move-result-wide v5

    .line 131
    .local v5, "tick":J
    invoke-virtual {v4}, Lcom/pdrogfer/mididroid/event/NoteOn;->getNoteValue()I

    move-result v7

    invoke-static {v7}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->getNoteNameFromMidiValue(I)Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v7

    .line 132
    .local v7, "noteName":Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    new-instance v8, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;

    const/4 v9, 0x1

    invoke-direct {v8, v7, v9}, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;-><init>(Lorg/catrobat/catroid/pocketmusic/note/NoteName;Z)V

    .line 134
    .local v8, "noteEvent":Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;
    invoke-virtual {v1, v5, v6, v8}, Lorg/catrobat/catroid/pocketmusic/note/Track;->addNoteEvent(JLorg/catrobat/catroid/pocketmusic/note/NoteEvent;)V

    .line 135
    .end local v4    # "noteOn":Lcom/pdrogfer/mididroid/event/NoteOn;
    .end local v5    # "tick":J
    .end local v7    # "noteName":Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    .end local v8    # "noteEvent":Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;
    goto :goto_2

    :cond_1
    instance-of v4, v3, Lcom/pdrogfer/mididroid/event/NoteOff;

    if-eqz v4, :cond_2

    .line 136
    move-object v4, v3

    check-cast v4, Lcom/pdrogfer/mididroid/event/NoteOff;

    .line 137
    .local v4, "noteOff":Lcom/pdrogfer/mididroid/event/NoteOff;
    invoke-virtual {v4}, Lcom/pdrogfer/mididroid/event/NoteOff;->getTick()J

    move-result-wide v5

    .line 138
    .restart local v5    # "tick":J
    invoke-virtual {v4}, Lcom/pdrogfer/mididroid/event/NoteOff;->getNoteValue()I

    move-result v7

    invoke-static {v7}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->getNoteNameFromMidiValue(I)Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v7

    .line 139
    .restart local v7    # "noteName":Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    new-instance v8, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;

    const/4 v9, 0x0

    invoke-direct {v8, v7, v9}, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;-><init>(Lorg/catrobat/catroid/pocketmusic/note/NoteName;Z)V

    .line 141
    .restart local v8    # "noteEvent":Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;
    invoke-virtual {v1, v5, v6, v8}, Lorg/catrobat/catroid/pocketmusic/note/Track;->addNoteEvent(JLorg/catrobat/catroid/pocketmusic/note/NoteEvent;)V

    .line 142
    .end local v4    # "noteOff":Lcom/pdrogfer/mididroid/event/NoteOff;
    .end local v5    # "tick":J
    .end local v7    # "noteName":Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    .end local v8    # "noteEvent":Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;
    goto :goto_2

    :cond_2
    instance-of v4, v3, Lcom/pdrogfer/mididroid/event/meta/Tempo;

    if-eqz v4, :cond_3

    .line 143
    move-object v4, v3

    check-cast v4, Lcom/pdrogfer/mididroid/event/meta/Tempo;

    .line 145
    .local v4, "tempo":Lcom/pdrogfer/mididroid/event/meta/Tempo;
    invoke-virtual {v4}, Lcom/pdrogfer/mididroid/event/meta/Tempo;->getBpm()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;->beatsPerMinute:I

    .end local v4    # "tempo":Lcom/pdrogfer/mididroid/event/meta/Tempo;
    goto :goto_1

    .line 146
    :cond_3
    instance-of v4, v3, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;

    if-eqz v4, :cond_4

    .line 147
    move-object v4, v3

    check-cast v4, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;

    .line 149
    .local v4, "timeSignature":Lcom/pdrogfer/mididroid/event/meta/TimeSignature;
    invoke-virtual {v4}, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->getNumerator()I

    move-result v5

    .line 150
    invoke-virtual {v4}, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->getRealDenominator()I

    move-result v6

    .line 149
    invoke-static {v5, v6}, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->convertToMusicalBeat(II)Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    move-result-object v5

    iput-object v5, p0, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;->beat:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    goto :goto_2

    .line 146
    .end local v4    # "timeSignature":Lcom/pdrogfer/mididroid/event/meta/TimeSignature;
    :cond_4
    :goto_1
    nop

    .line 152
    .end local v3    # "midiEvent":Lcom/pdrogfer/mididroid/event/MidiEvent;
    :goto_2
    goto :goto_0

    .line 154
    :cond_5
    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;->tracks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method private getInstrumentFromMidiTrack(Lcom/pdrogfer/mididroid/MidiTrack;)Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;
    .locals 5
    .param p1, "midiTrack"    # Lcom/pdrogfer/mididroid/MidiTrack;

    .line 158
    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/MidiTrack;->getEvents()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 159
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pdrogfer/mididroid/event/MidiEvent;>;"
    sget-object v1, Lorg/catrobat/catroid/pocketmusic/note/Project;->DEFAULT_INSTRUMENT:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    .line 161
    .local v1, "instrument":Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pdrogfer/mididroid/event/MidiEvent;

    .line 164
    .local v2, "midiEvent":Lcom/pdrogfer/mididroid/event/MidiEvent;
    instance-of v3, v2, Lcom/pdrogfer/mididroid/event/ProgramChange;

    if-eqz v3, :cond_0

    .line 165
    move-object v3, v2

    check-cast v3, Lcom/pdrogfer/mididroid/event/ProgramChange;

    .line 167
    .local v3, "program":Lcom/pdrogfer/mididroid/event/ProgramChange;
    invoke-virtual {v3}, Lcom/pdrogfer/mididroid/event/ProgramChange;->getProgramNumber()I

    move-result v4

    invoke-static {v4}, Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;->getInstrumentFromProgram(I)Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    move-result-object v1

    .line 168
    goto :goto_1

    .line 170
    .end local v2    # "midiEvent":Lcom/pdrogfer/mididroid/event/MidiEvent;
    .end local v3    # "program":Lcom/pdrogfer/mididroid/event/ProgramChange;
    :cond_0
    goto :goto_0

    .line 172
    :cond_1
    :goto_1
    return-object v1
.end method

.method private validateMidiFile(Lcom/pdrogfer/mididroid/MidiFile;)V
    .locals 6
    .param p1, "midiFile"    # Lcom/pdrogfer/mididroid/MidiFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/pocketmusic/note/midi/MidiException;
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/MidiFile;->getTrackCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 76
    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/MidiFile;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pdrogfer/mididroid/MidiTrack;

    .line 78
    .local v0, "tempoTrack":Lcom/pdrogfer/mididroid/MidiTrack;
    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/MidiTrack;->getEvents()Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 80
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pdrogfer/mididroid/event/MidiEvent;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pdrogfer/mididroid/event/MidiEvent;

    .line 83
    .local v2, "event":Lcom/pdrogfer/mididroid/event/MidiEvent;
    instance-of v3, v2, Lcom/pdrogfer/mididroid/event/meta/Text;

    if-eqz v3, :cond_0

    .line 84
    move-object v3, v2

    check-cast v3, Lcom/pdrogfer/mididroid/event/meta/Text;

    .line 86
    .local v3, "text":Lcom/pdrogfer/mididroid/event/meta/Text;
    invoke-virtual {v3}, Lcom/pdrogfer/mididroid/event/meta/Text;->getText()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Musicdroid Midi File"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    return-void

    .line 93
    .end local v0    # "tempoTrack":Lcom/pdrogfer/mididroid/MidiTrack;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pdrogfer/mididroid/event/MidiEvent;>;"
    .end local v2    # "event":Lcom/pdrogfer/mididroid/event/MidiEvent;
    .end local v3    # "text":Lcom/pdrogfer/mididroid/event/meta/Text;
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiException;

    const-string v1, "Unsupported MIDI!"

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public convertMidiFileToProject(Ljava/io/File;)Lorg/catrobat/catroid/pocketmusic/note/Project;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/pocketmusic/note/midi/MidiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/pdrogfer/mididroid/MidiFile;

    invoke-direct {v0, p1}, Lcom/pdrogfer/mididroid/MidiFile;-><init>(Ljava/io/File;)V

    .line 67
    .local v0, "midi":Lcom/pdrogfer/mididroid/MidiFile;
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;->validateMidiFile(Lcom/pdrogfer/mididroid/MidiFile;)V

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".midi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 71
    .local v1, "projectName":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;->convertMidi(Ljava/lang/String;Lcom/pdrogfer/mididroid/MidiFile;)Lorg/catrobat/catroid/pocketmusic/note/Project;

    move-result-object v2

    return-object v2
.end method
