.class public Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;
.super Ljava/lang/Object;
.source "ProjectToMidiConverter.java"


# static fields
.field private static final MAX_CHANNEL:I = 0x10

.field public static final MIDI_FILE_EXTENSION:Ljava/lang/String; = ".midi"

.field public static final MIDI_FILE_IDENTIFIER:Ljava/lang/String; = "Musicdroid Midi File"

.field public static midiFolder:Ljava/io/File;


# instance fields
.field private eventConverter:Lorg/catrobat/catroid/pocketmusic/note/midi/NoteEventToMidiEventConverter;

.field private nextChannel:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "musicdroid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;->midiFolder:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/midi/NoteEventToMidiEventConverter;

    invoke-direct {v0}, Lorg/catrobat/catroid/pocketmusic/note/midi/NoteEventToMidiEventConverter;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;->eventConverter:Lorg/catrobat/catroid/pocketmusic/note/midi/NoteEventToMidiEventConverter;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;->nextChannel:I

    .line 60
    return-void
.end method

.method private static checkMidiFolder()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;->midiFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;->midiFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 74
    .local v0, "success":Z
    if-eqz v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create folder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;->midiFolder:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    .end local v0    # "success":Z
    :cond_1
    :goto_0
    return-void
.end method

.method private convertProject(Lorg/catrobat/catroid/pocketmusic/note/Project;)Lcom/pdrogfer/mididroid/MidiFile;
    .locals 7
    .param p1, "project"    # Lorg/catrobat/catroid/pocketmusic/note/Project;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/pocketmusic/note/midi/MidiException;
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getTrackNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    .local v1, "trackName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getTrack(Ljava/lang/String;)Lorg/catrobat/catroid/pocketmusic/note/Track;

    move-result-object v2

    .line 98
    .local v2, "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    invoke-virtual {v2}, Lorg/catrobat/catroid/pocketmusic/note/Track;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    .end local v1    # "trackName":Ljava/lang/String;
    .end local v2    # "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    goto :goto_0

    .line 99
    .restart local v1    # "trackName":Ljava/lang/String;
    .restart local v2    # "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiException;

    const-string v3, "Cannot save a project with an empty track!"

    invoke-direct {v0, v3}, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    .end local v1    # "trackName":Ljava/lang/String;
    .end local v2    # "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pdrogfer/mididroid/MidiTrack;>;"
    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getBeat()Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    move-result-object v1

    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getBeatsPerMinute()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;->createTempoTrackWithMetaInfo(Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;I)Lcom/pdrogfer/mididroid/MidiTrack;

    move-result-object v1

    .line 106
    .local v1, "tempoTrack":Lcom/pdrogfer/mididroid/MidiTrack;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getTrackNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 109
    .local v3, "trackName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getTrack(Ljava/lang/String;)Lorg/catrobat/catroid/pocketmusic/note/Track;

    move-result-object v4

    .line 110
    .local v4, "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    invoke-direct {p0}, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;->getNextChannel()I

    move-result v5

    .line 112
    .local v5, "channel":I
    invoke-direct {p0, v3, v4, v5}, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;->createNoteTrack(Ljava/lang/String;Lorg/catrobat/catroid/pocketmusic/note/Track;I)Lcom/pdrogfer/mididroid/MidiTrack;

    move-result-object v6

    .line 114
    .local v6, "noteTrack":Lcom/pdrogfer/mididroid/MidiTrack;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v3    # "trackName":Ljava/lang/String;
    .end local v4    # "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    .end local v5    # "channel":I
    .end local v6    # "noteTrack":Lcom/pdrogfer/mididroid/MidiTrack;
    goto :goto_1

    .line 117
    :cond_2
    new-instance v2, Lcom/pdrogfer/mididroid/MidiFile;

    const/16 v3, 0x1e0

    invoke-direct {v2, v3, v0}, Lcom/pdrogfer/mididroid/MidiFile;-><init>(ILjava/util/ArrayList;)V

    return-object v2
.end method

.method private createNoteTrack(Ljava/lang/String;Lorg/catrobat/catroid/pocketmusic/note/Track;I)Lcom/pdrogfer/mididroid/MidiTrack;
    .locals 10
    .param p1, "trackName"    # Ljava/lang/String;
    .param p2, "track"    # Lorg/catrobat/catroid/pocketmusic/note/Track;
    .param p3, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/pocketmusic/note/midi/MidiException;
        }
    .end annotation

    .line 148
    new-instance v0, Lcom/pdrogfer/mididroid/MidiTrack;

    invoke-direct {v0}, Lcom/pdrogfer/mididroid/MidiTrack;-><init>()V

    .line 150
    .local v0, "noteTrack":Lcom/pdrogfer/mididroid/MidiTrack;
    new-instance v7, Lcom/pdrogfer/mididroid/event/meta/TrackName;

    int-to-long v4, p3

    const-wide/16 v2, 0x0

    move-object v1, v7

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/pdrogfer/mididroid/event/meta/TrackName;-><init>(JJLjava/lang/String;)V

    .line 151
    .local v1, "trackNameEvent":Lcom/pdrogfer/mididroid/event/meta/TrackName;
    invoke-virtual {v0, v1}, Lcom/pdrogfer/mididroid/MidiTrack;->insertEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;)V

    .line 152
    new-instance v2, Lcom/pdrogfer/mididroid/event/ProgramChange;

    invoke-virtual {p2}, Lorg/catrobat/catroid/pocketmusic/note/Track;->getInstrument()Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;->getProgram()I

    move-result v3

    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5, p3, v3}, Lcom/pdrogfer/mididroid/event/ProgramChange;-><init>(JII)V

    .line 153
    .local v2, "program":Lcom/pdrogfer/mididroid/event/ProgramChange;
    invoke-virtual {v0, v2}, Lcom/pdrogfer/mididroid/MidiTrack;->insertEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;)V

    .line 155
    invoke-virtual {p2}, Lorg/catrobat/catroid/pocketmusic/note/Track;->getSortedTicks()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 156
    .local v4, "tick":J
    invoke-virtual {p2, v4, v5}, Lorg/catrobat/catroid/pocketmusic/note/Track;->getNoteEventsForTick(J)Ljava/util/List;

    move-result-object v6

    .line 158
    .local v6, "noteEventList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;

    .line 159
    .local v8, "noteEvent":Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;
    iget-object v9, p0, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;->eventConverter:Lorg/catrobat/catroid/pocketmusic/note/midi/NoteEventToMidiEventConverter;

    invoke-virtual {v9, v4, v5, v8, p3}, Lorg/catrobat/catroid/pocketmusic/note/midi/NoteEventToMidiEventConverter;->convertNoteEvent(JLorg/catrobat/catroid/pocketmusic/note/NoteEvent;I)Lcom/pdrogfer/mididroid/event/ChannelEvent;

    move-result-object v9

    .line 160
    .local v9, "channelEvent":Lcom/pdrogfer/mididroid/event/ChannelEvent;
    invoke-virtual {v0, v9}, Lcom/pdrogfer/mididroid/MidiTrack;->insertEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;)V

    .line 161
    .end local v8    # "noteEvent":Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;
    .end local v9    # "channelEvent":Lcom/pdrogfer/mididroid/event/ChannelEvent;
    goto :goto_1

    .line 162
    .end local v4    # "tick":J
    .end local v6    # "noteEventList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;>;"
    :cond_0
    goto :goto_0

    .line 164
    :cond_1
    return-object v0
.end method

.method private createTempoTrackWithMetaInfo(Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;I)Lcom/pdrogfer/mididroid/MidiTrack;
    .locals 8
    .param p1, "beat"    # Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;
    .param p2, "beatsPerMinute"    # I

    .line 129
    new-instance v0, Lcom/pdrogfer/mididroid/MidiTrack;

    invoke-direct {v0}, Lcom/pdrogfer/mididroid/MidiTrack;-><init>()V

    .line 131
    .local v0, "tempoTrack":Lcom/pdrogfer/mididroid/MidiTrack;
    new-instance v7, Lcom/pdrogfer/mididroid/event/meta/Text;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-string v6, "Musicdroid Midi File"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/pdrogfer/mididroid/event/meta/Text;-><init>(JJLjava/lang/String;)V

    .line 132
    .local v1, "text":Lcom/pdrogfer/mididroid/event/meta/Text;
    invoke-virtual {v0, v1}, Lcom/pdrogfer/mididroid/MidiTrack;->insertEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;)V

    .line 134
    new-instance v2, Lcom/pdrogfer/mididroid/event/meta/Tempo;

    invoke-direct {v2}, Lcom/pdrogfer/mididroid/event/meta/Tempo;-><init>()V

    .line 135
    .local v2, "tempo":Lcom/pdrogfer/mididroid/event/meta/Tempo;
    int-to-float v3, p2

    invoke-virtual {v2, v3}, Lcom/pdrogfer/mididroid/event/meta/Tempo;->setBpm(F)V

    .line 136
    invoke-virtual {v0, v2}, Lcom/pdrogfer/mididroid/MidiTrack;->insertEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;)V

    .line 138
    new-instance v3, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;

    invoke-direct {v3}, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;-><init>()V

    .line 139
    .local v3, "timeSignature":Lcom/pdrogfer/mididroid/event/meta/TimeSignature;
    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->getTopNumber()I

    move-result v4

    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->getBottomNumber()I

    move-result v5

    const/16 v6, 0x18

    const/16 v7, 0x8

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->setTimeSignature(IIII)V

    .line 142
    invoke-virtual {v0, v3}, Lcom/pdrogfer/mididroid/MidiTrack;->insertEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;)V

    .line 144
    return-object v0
.end method

.method public static getMidiFileFromProjectName(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;->checkMidiFolder()V

    .line 82
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;->midiFolder:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".midi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getNextChannel()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/pocketmusic/note/midi/MidiException;
        }
    .end annotation

    .line 121
    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;->nextChannel:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 125
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;->nextChannel:I

    return v0

    .line 122
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiException;

    const-string v1, "You cannot have more than 16 channels!"

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static removeMidiExtensionFromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .line 86
    const-string v0, ".midi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public writeProjectAsMidi(Lorg/catrobat/catroid/pocketmusic/note/Project;)V
    .locals 2
    .param p1, "project"    # Lorg/catrobat/catroid/pocketmusic/note/Project;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/catrobat/catroid/pocketmusic/note/midi/MidiException;
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;->convertProject(Lorg/catrobat/catroid/pocketmusic/note/Project;)Lcom/pdrogfer/mididroid/MidiFile;

    move-result-object v0

    .line 65
    .local v0, "midiFile":Lcom/pdrogfer/mididroid/MidiFile;
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;->checkMidiFolder()V

    .line 67
    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;->getMidiFileFromProjectName(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pdrogfer/mididroid/MidiFile;->writeToFile(Ljava/io/File;)V

    .line 68
    return-void
.end method

.method public writeProjectAsMidi(Lorg/catrobat/catroid/pocketmusic/note/Project;Ljava/io/File;)V
    .locals 1
    .param p1, "project"    # Lorg/catrobat/catroid/pocketmusic/note/Project;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/catrobat/catroid/pocketmusic/note/midi/MidiException;
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;->convertProject(Lorg/catrobat/catroid/pocketmusic/note/Project;)Lcom/pdrogfer/mididroid/MidiFile;

    move-result-object v0

    .line 91
    .local v0, "midi":Lcom/pdrogfer/mididroid/MidiFile;
    invoke-virtual {v0, p2}, Lcom/pdrogfer/mididroid/MidiFile;->writeToFile(Ljava/io/File;)V

    .line 92
    return-void
.end method
