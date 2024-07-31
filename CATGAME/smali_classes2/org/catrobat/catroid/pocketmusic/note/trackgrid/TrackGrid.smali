.class public Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;
.super Ljava/lang/Object;
.source "TrackGrid.java"


# static fields
.field private static final INDEX_TO_COUNT_OFFSET:I = 0x1

.field private static final SOUND_OFFSET:I = 0xa


# instance fields
.field private final beat:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

.field private final gridRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private final instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

.field private final key:Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

.field private midiDriver:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

.field private playRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;Ljava/util/List;)V
    .locals 2
    .param p1, "key"    # Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;
    .param p2, "instrument"    # Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;
    .param p3, "beat"    # Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;",
            "Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;",
            "Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p4, "gridRows":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->playRunnables:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->key:Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    .line 62
    iput-object p2, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    .line 63
    iput-object p3, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->beat:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    .line 64
    iput-object p4, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->gridRows:Ljava/util/List;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->handler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    invoke-direct {v0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->midiDriver:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    .line 67
    return-void
.end method

.method private appendNoteListAtPosition(Landroidx/collection/SparseArrayCompat;I)V
    .locals 2
    .param p2, "tactIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;",
            ">;>;I)V"
        }
    .end annotation

    .line 151
    .local p1, "array":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->beat:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->getTopNumber()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    .local v0, "gridRowPositions":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;>;"
    invoke-virtual {p1, p2, v0}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 153
    return-void
.end method

.method private createNewGridRow(Lorg/catrobat/catroid/pocketmusic/note/NoteName;)Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;
    .locals 3
    .param p1, "noteName"    # Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    .line 156
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 157
    .local v0, "array":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;>;>;"
    new-instance v1, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;

    invoke-direct {v1, p1, v0}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;-><init>(Lorg/catrobat/catroid/pocketmusic/note/NoteName;Landroidx/collection/SparseArrayCompat;)V

    .line 158
    .local v1, "gridRow":Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->gridRows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 98
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    .line 99
    .local v0, "reference":Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;
    iget-object v1, v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->gridRows:Ljava/util/List;

    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->gridRows:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->gridRows:Ljava/util/List;

    iget-object v2, v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->gridRows:Ljava/util/List;

    .line 100
    invoke-interface {v1, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->beat:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->beat:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    .line 101
    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    .line 102
    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->key:Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->key:Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    .line 103
    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 99
    :goto_0
    return v1
.end method

.method public getBeat()Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->beat:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    return-object v0
.end method

.method public getGridRowForNoteName(Lorg/catrobat/catroid/pocketmusic/note/NoteName;)Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;
    .locals 3
    .param p1, "noteName"    # Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    .line 107
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->gridRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;

    .line 108
    .local v1, "gridRow":Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;
    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getNoteName()Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    return-object v1

    .line 111
    .end local v1    # "gridRow":Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;
    :cond_0
    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGridRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->gridRows:Ljava/util/List;

    return-object v0
.end method

.method public getInstrument()Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    return-object v0
.end method

.method public getKey()Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->key:Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    return-object v0
.end method

.method public getTactCount()I
    .locals 6

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "tactcount":I
    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->gridRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;

    .line 165
    .local v2, "gridRow":Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;
    invoke-virtual {v2}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v3

    .line 166
    .local v3, "gridRowPositions":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;>;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v3}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 167
    invoke-virtual {v3, v4}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v5

    .line 168
    .local v5, "tactForGridRow":I
    if-le v5, v0, :cond_0

    .line 169
    move v0, v5

    .line 166
    .end local v5    # "tactForGridRow":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 172
    .end local v2    # "gridRow":Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;
    .end local v3    # "gridRowPositions":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;>;>;"
    .end local v4    # "i":I
    :cond_1
    goto :goto_0

    .line 173
    :cond_2
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 87
    const/16 v0, 0xac

    .line 88
    .local v0, "hashCode":I
    const/16 v1, 0x1f

    .line 89
    .local v1, "primeWithGoodCollisionPrevention":I
    mul-int v2, v1, v0

    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->key:Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 90
    .end local v0    # "hashCode":I
    .local v2, "hashCode":I
    mul-int v0, v1, v2

    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->instrument:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 91
    .end local v2    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int v2, v1, v0

    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->beat:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 92
    .end local v0    # "hashCode":I
    .restart local v2    # "hashCode":I
    mul-int v0, v1, v2

    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->gridRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 93
    .end local v2    # "hashCode":I
    .restart local v0    # "hashCode":I
    return v0
.end method

.method public startPlayback(Lorg/catrobat/catroid/pocketmusic/ui/PianoView;)V
    .locals 29
    .param p1, "pianoView"    # Lorg/catrobat/catroid/pocketmusic/ui/PianoView;

    .line 177
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->playRunnables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 178
    sget-object v1, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->QUARTER:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->toMilliseconds(I)J

    move-result-wide v1

    .line 179
    .local v1, "playLength":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 180
    .local v3, "currentTime":J
    iget-object v5, v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->gridRows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;

    .line 181
    .local v6, "row":Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v6}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 182
    invoke-virtual {v6}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v8

    .line 183
    .local v8, "tactIndex":I
    sget v9, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->quarterCount:I

    int-to-long v9, v9

    mul-long/2addr v9, v1

    int-to-long v11, v8

    mul-long/2addr v9, v11

    .line 184
    .local v9, "tactOffset":J
    invoke-virtual {v6}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 185
    .local v11, "gridRowPositions":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;

    .line 186
    .local v13, "position":Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;
    sget-object v14, Lorg/catrobat/catroid/pocketmusic/note/Project;->DEFAULT_INSTRUMENT:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    .line 187
    invoke-virtual {v6}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getNoteName()Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v15

    invoke-virtual {v15}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->getMidi()I

    move-result v15

    .line 186
    invoke-static {v14, v15}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->getAdjustedMidiValue(Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;I)I

    move-result v14

    .line 188
    .local v14, "adjustedMidiValue":I
    new-instance v25, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;

    sget-object v16, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->NOTE_ON:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    invoke-static {v14}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->getNoteNameFromMidiValue(I)Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v17

    const-wide/16 v26, 0xa

    sub-long v18, v1, v26

    iget-object v15, v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->handler:Landroid/os/Handler;

    move-object/from16 v28, v5

    iget-object v5, v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->midiDriver:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    const/16 v23, 0x0

    .line 190
    invoke-virtual {v6}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getNoteName()Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v24

    move-object/from16 v20, v15

    move-object/from16 v15, v25

    move-object/from16 v21, v5

    move-object/from16 v22, p1

    invoke-direct/range {v15 .. v24}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;-><init>(Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;Lorg/catrobat/catroid/pocketmusic/note/NoteName;JLandroid/os/Handler;Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;Lorg/catrobat/catroid/pocketmusic/ui/PianoView;BLorg/catrobat/catroid/pocketmusic/note/NoteName;)V

    move-object/from16 v5, v25

    .line 192
    .local v5, "runnable":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;
    iget-object v15, v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->handler:Landroid/os/Handler;

    add-long v16, v3, v9

    .line 193
    move-wide/from16 v18, v3

    .end local v3    # "currentTime":J
    .local v18, "currentTime":J
    invoke-virtual {v13}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;->getColumnStartIndex()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v1

    add-long v16, v16, v3

    add-long v3, v16, v26

    .line 192
    invoke-virtual {v15, v5, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 194
    iget-object v3, v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->playRunnables:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v5    # "runnable":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;
    .end local v13    # "position":Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;
    .end local v14    # "adjustedMidiValue":I
    move-wide/from16 v3, v18

    move-object/from16 v5, v28

    goto :goto_2

    .line 185
    .end local v18    # "currentTime":J
    .restart local v3    # "currentTime":J
    :cond_0
    move-wide/from16 v18, v3

    move-object/from16 v28, v5

    .line 181
    .end local v3    # "currentTime":J
    .end local v8    # "tactIndex":I
    .end local v9    # "tactOffset":J
    .end local v11    # "gridRowPositions":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;>;"
    .restart local v18    # "currentTime":J
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .end local v18    # "currentTime":J
    .restart local v3    # "currentTime":J
    :cond_1
    move-wide/from16 v18, v3

    move-object/from16 v28, v5

    .line 197
    .end local v3    # "currentTime":J
    .end local v6    # "row":Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;
    .end local v7    # "i":I
    .restart local v18    # "currentTime":J
    goto/16 :goto_0

    .line 198
    .end local v18    # "currentTime":J
    .restart local v3    # "currentTime":J
    :cond_2
    return-void
.end method

.method public stopPlayback(Lorg/catrobat/catroid/pocketmusic/ui/PianoView;)V
    .locals 16
    .param p1, "pianoView"    # Lorg/catrobat/catroid/pocketmusic/ui/PianoView;

    .line 201
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->playRunnables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;

    .line 202
    .local v2, "r":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;
    iget-object v3, v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/Project;->DEFAULT_INSTRUMENT:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    .line 204
    invoke-virtual {v2}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->getNoteName()Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->getMidi()I

    move-result v4

    .line 203
    invoke-static {v3, v4}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->getAdjustedMidiValue(Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;I)I

    move-result v3

    .line 205
    .local v3, "adjustedMidiValue":I
    iget-object v4, v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->handler:Landroid/os/Handler;

    new-instance v15, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;

    sget-object v6, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->NOTE_OFF:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    invoke-static {v3}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->getNoteNameFromMidiValue(I)Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v7

    const-wide/16 v8, 0x0

    iget-object v10, v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->handler:Landroid/os/Handler;

    iget-object v11, v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->midiDriver:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    const/4 v13, 0x0

    .line 206
    invoke-virtual {v2}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->getNoteName()Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v14

    move-object v5, v15

    move-object/from16 v12, p1

    invoke-direct/range {v5 .. v14}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;-><init>(Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;Lorg/catrobat/catroid/pocketmusic/note/NoteName;JLandroid/os/Handler;Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;Lorg/catrobat/catroid/pocketmusic/ui/PianoView;BLorg/catrobat/catroid/pocketmusic/note/NoteName;)V

    .line 205
    invoke-virtual {v4, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    .end local v2    # "r":Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;
    .end local v3    # "adjustedMidiValue":I
    goto :goto_0

    .line 208
    :cond_0
    iget-object v1, v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->playRunnables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 209
    return-void
.end method

.method public updateGridRowPosition(Lorg/catrobat/catroid/pocketmusic/note/NoteName;ILorg/catrobat/catroid/pocketmusic/note/NoteLength;IZ)V
    .locals 22
    .param p1, "noteName"    # Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    .param p2, "columnIndex"    # I
    .param p3, "noteLength"    # Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    .param p4, "tactIndex"    # I
    .param p5, "toggled"    # Z

    .line 117
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    invoke-virtual/range {p0 .. p1}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->getGridRowForNoteName(Lorg/catrobat/catroid/pocketmusic/note/NoteName;)Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;

    move-result-object v3

    .line 118
    .local v3, "gridRow":Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;
    if-nez v3, :cond_0

    .line 119
    invoke-direct/range {p0 .. p1}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->createNewGridRow(Lorg/catrobat/catroid/pocketmusic/note/NoteName;)Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;

    move-result-object v3

    .line 121
    :cond_0
    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_1

    .line 122
    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v4

    invoke-direct {v0, v4, v2}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->appendNoteListAtPosition(Landroidx/collection/SparseArrayCompat;I)V

    .line 124
    :cond_1
    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 125
    .local v4, "currentGridRowPositions":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;>;"
    invoke-static {v4, v1}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;->getGridRowPositionIndexInList(Ljava/util/List;I)I

    move-result v5

    .line 126
    .local v5, "indexInList":I
    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x4

    const-string v11, "TrackGrid"

    if-eqz p5, :cond_3

    .line 127
    const/4 v12, -0x1

    if-ne v5, v12, :cond_2

    .line 128
    new-array v10, v10, [Ljava/lang/Object;

    .line 129
    invoke-virtual/range {p1 .. p1}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->name()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v9

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v8

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v7

    invoke-virtual/range {p3 .. p3}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v6

    .line 128
    const-string v6, "Added GridRowPosition with name %s on Tact %d with columnIndex %d and noteLength %s. "

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v6, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;

    move-object/from16 v12, p3

    invoke-direct {v6, v1, v12}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;-><init>(ILorg/catrobat/catroid/pocketmusic/note/NoteLength;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v6, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->QUARTER:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    const/16 v7, 0x3c

    invoke-virtual {v6, v7}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->toMilliseconds(I)J

    move-result-wide v6

    .line 132
    .local v6, "playLength":J
    sget-object v8, Lorg/catrobat/catroid/pocketmusic/note/Project;->DEFAULT_INSTRUMENT:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    .line 133
    invoke-virtual/range {p1 .. p1}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->getMidi()I

    move-result v9

    .line 132
    invoke-static {v8, v9}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiPlayer;->getAdjustedMidiValue(Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;I)I

    move-result v8

    .line 134
    .local v8, "adjustedMidiValue":I
    iget-object v9, v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->handler:Landroid/os/Handler;

    new-instance v10, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;

    sget-object v14, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->NOTE_ON:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    invoke-static {v8}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->getNoteNameFromMidiValue(I)Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v15

    iget-object v11, v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->handler:Landroid/os/Handler;

    iget-object v13, v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->midiDriver:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v19, v13

    move-object v13, v10

    move-wide/from16 v16, v6

    move-object/from16 v18, v11

    invoke-direct/range {v13 .. v21}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;-><init>(Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;Lorg/catrobat/catroid/pocketmusic/note/NoteName;JLandroid/os/Handler;Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;Lorg/catrobat/catroid/pocketmusic/ui/PianoView;B)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    .end local v6    # "playLength":J
    .end local v8    # "adjustedMidiValue":I
    goto :goto_0

    .line 127
    :cond_2
    move-object/from16 v12, p3

    goto :goto_0

    .line 138
    :cond_3
    move-object/from16 v12, p3

    if-ltz v5, :cond_4

    .line 139
    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 140
    new-array v10, v10, [Ljava/lang/Object;

    .line 141
    invoke-virtual/range {p1 .. p1}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->name()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v9

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v8

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v7

    .line 142
    invoke-virtual/range {p3 .. p3}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v6

    .line 140
    const-string v6, "Removed GridRowPosition with name %s on Tact %d with columnIndex %d and noteLength %s."

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 144
    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    .line 148
    :cond_4
    :goto_0
    return-void
.end method
