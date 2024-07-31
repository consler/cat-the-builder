.class public final Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGridToTrackConverter;
.super Ljava/lang/Object;
.source "TrackGridToTrackConverter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static convertTrackGridToTrack(Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;I)Lorg/catrobat/catroid/pocketmusic/note/Track;
    .locals 17
    .param p0, "trackGrid"    # Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;
    .param p1, "beatsPerMinute"    # I

    .line 39
    move/from16 v0, p1

    new-instance v1, Lorg/catrobat/catroid/pocketmusic/note/Track;

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->getKey()Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->getInstrument()Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/pocketmusic/note/Track;-><init>(Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;)V

    .line 41
    .local v1, "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->getGridRows()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;

    .line 42
    .local v3, "gridRow":Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;
    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v4

    .line 43
    .local v4, "positionsSparseArray":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 44
    invoke-virtual {v4, v5}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v6

    .line 45
    .local v6, "key":I
    invoke-virtual {v4, v6}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 47
    .local v7, "positionsList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;

    .line 49
    .local v9, "position":Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;
    invoke-virtual {v9}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;->getStartTicksInTrack()J

    move-result-wide v10

    .line 50
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->getBeat()Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    move-result-object v12

    invoke-virtual {v12}, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->getTopNumber()I

    move-result v12

    mul-int/2addr v12, v6

    mul-int/2addr v12, v0

    mul-int/lit8 v12, v12, 0x8

    int-to-long v12, v12

    add-long/2addr v10, v12

    .line 51
    .local v10, "startTicsInTrack":J
    invoke-virtual {v9}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;->getNoteLength()Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    move-result-object v12

    invoke-virtual {v12, v0}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->toTicks(I)J

    move-result-wide v12

    .line 53
    .local v12, "noteLength":J
    new-instance v14, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;

    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getNoteName()Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v15

    const/4 v0, 0x1

    invoke-direct {v14, v15, v0}, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;-><init>(Lorg/catrobat/catroid/pocketmusic/note/NoteName;Z)V

    move-object v0, v14

    .line 54
    .local v0, "noteOnEvent":Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;
    invoke-virtual {v1, v10, v11, v0}, Lorg/catrobat/catroid/pocketmusic/note/Track;->addNoteEvent(JLorg/catrobat/catroid/pocketmusic/note/NoteEvent;)V

    .line 56
    new-instance v14, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;

    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getNoteName()Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v15

    move-object/from16 v16, v0

    .end local v0    # "noteOnEvent":Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;
    .local v16, "noteOnEvent":Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;
    const/4 v0, 0x0

    invoke-direct {v14, v15, v0}, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;-><init>(Lorg/catrobat/catroid/pocketmusic/note/NoteName;Z)V

    move-object v0, v14

    .line 57
    .local v0, "noteOffEvent":Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;
    add-long v14, v10, v12

    invoke-virtual {v1, v14, v15, v0}, Lorg/catrobat/catroid/pocketmusic/note/Track;->addNoteEvent(JLorg/catrobat/catroid/pocketmusic/note/NoteEvent;)V

    .line 58
    .end local v0    # "noteOffEvent":Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;
    .end local v9    # "position":Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;
    .end local v10    # "startTicsInTrack":J
    .end local v12    # "noteLength":J
    .end local v16    # "noteOnEvent":Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;
    move/from16 v0, p1

    goto :goto_2

    .line 43
    .end local v6    # "key":I
    .end local v7    # "positionsList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;>;"
    :cond_0
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, p1

    goto :goto_1

    .line 60
    .end local v3    # "gridRow":Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;
    .end local v4    # "positionsSparseArray":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;>;>;"
    .end local v5    # "i":I
    :cond_1
    move/from16 v0, p1

    goto :goto_0

    .line 62
    :cond_2
    return-object v1
.end method
