.class public final Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackToTrackGridConverter;
.super Ljava/lang/Object;
.source "TrackToTrackGridConverter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static convertTrackToTrackGrid(Lorg/catrobat/catroid/pocketmusic/note/Track;Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;I)Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;
    .locals 20
    .param p0, "track"    # Lorg/catrobat/catroid/pocketmusic/note/Track;
    .param p1, "beat"    # Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;
    .param p2, "beatsPerMinute"    # I

    .line 44
    move/from16 v0, p2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v1, "openNotes":Ljava/util/Map;, "Ljava/util/Map<Lorg/catrobat/catroid/pocketmusic/note/NoteName;Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v2, "gridRows":Ljava/util/Map;, "Ljava/util/Map<Lorg/catrobat/catroid/pocketmusic/note/NoteName;Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->getNoteLength()Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    move-result-object v3

    .line 49
    .local v3, "minNoteLength":Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/pocketmusic/note/Track;->getSortedTicks()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 50
    .local v5, "tick":Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v8, p0

    invoke-virtual {v8, v6, v7}, Lorg/catrobat/catroid/pocketmusic/note/Track;->getNoteEventsForTick(J)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;

    .line 51
    .local v7, "noteEvent":Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;
    invoke-virtual {v7}, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->getNoteName()Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v9

    .line 53
    .local v9, "noteName":Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_0

    .line 54
    new-instance v10, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;

    new-instance v11, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v11}, Landroidx/collection/SparseArrayCompat;-><init>()V

    invoke-direct {v10, v9, v11}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;-><init>(Lorg/catrobat/catroid/pocketmusic/note/NoteName;Landroidx/collection/SparseArrayCompat;)V

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    invoke-virtual {v7}, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->isNoteOn()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 58
    invoke-interface {v1, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v1

    move-object/from16 v16, v3

    goto/16 :goto_4

    .line 60
    :cond_1
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 61
    .local v10, "openTick":J
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long/2addr v12, v10

    invoke-static {v12, v13, v0}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->getNoteLengthFromTickDuration(JI)Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    move-result-object v12

    .line 63
    .local v12, "length":Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    invoke-virtual {v3, v0}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->toTicks(I)J

    move-result-wide v13

    div-long v13, v10, v13

    long-to-int v13, v13

    .line 64
    .local v13, "columnStartIndex":I
    invoke-virtual/range {p1 .. p1}, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->getTopNumber()I

    move-result v14

    div-int v14, v13, v14

    .line 65
    .local v14, "startBeatIndex":I
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    sub-long/2addr v15, v10

    .line 66
    invoke-virtual {v3, v0}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->toTicks(I)J

    move-result-wide v17

    move-object/from16 v19, v1

    .end local v1    # "openNotes":Ljava/util/Map;, "Ljava/util/Map<Lorg/catrobat/catroid/pocketmusic/note/NoteName;Ljava/lang/Long;>;"
    .local v19, "openNotes":Ljava/util/Map;, "Ljava/util/Map<Lorg/catrobat/catroid/pocketmusic/note/NoteName;Ljava/lang/Long;>;"
    div-long v0, v15, v17

    long-to-int v0, v0

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, -0x1

    invoke-virtual/range {p1 .. p1}, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->getTopNumber()I

    move-result v1

    div-int/2addr v0, v1

    .line 68
    .local v0, "endBeatIndex":I
    new-instance v1, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;

    invoke-virtual/range {p1 .. p1}, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->getTopNumber()I

    move-result v15

    rem-int v15, v13, v15

    invoke-direct {v1, v15, v12}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;-><init>(ILorg/catrobat/catroid/pocketmusic/note/NoteLength;)V

    .line 70
    .local v1, "gridRowPosition":Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;
    move v15, v14

    .local v15, "i":I
    :goto_2
    if-gt v15, v0, :cond_3

    .line 71
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;

    move/from16 v17, v0

    .end local v0    # "endBeatIndex":I
    .local v17, "endBeatIndex":I
    invoke-virtual/range {v16 .. v16}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 72
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    move-object/from16 v16, v3

    .end local v3    # "minNoteLength":Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    .local v16, "minNoteLength":Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v15, v3}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 71
    .end local v16    # "minNoteLength":Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    .restart local v3    # "minNoteLength":Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    :cond_2
    move-object/from16 v16, v3

    .line 75
    .end local v3    # "minNoteLength":Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    .restart local v16    # "minNoteLength":Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    :goto_3
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v16

    move/from16 v0, v17

    goto :goto_2

    .end local v16    # "minNoteLength":Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    .end local v17    # "endBeatIndex":I
    .restart local v0    # "endBeatIndex":I
    .restart local v3    # "minNoteLength":Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    :cond_3
    move/from16 v17, v0

    move-object/from16 v16, v3

    .line 78
    .end local v0    # "endBeatIndex":I
    .end local v1    # "gridRowPosition":Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;
    .end local v3    # "minNoteLength":Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    .end local v7    # "noteEvent":Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;
    .end local v9    # "noteName":Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    .end local v10    # "openTick":J
    .end local v12    # "length":Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    .end local v13    # "columnStartIndex":I
    .end local v14    # "startBeatIndex":I
    .end local v15    # "i":I
    .restart local v16    # "minNoteLength":Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    :goto_4
    move/from16 v0, p2

    move-object/from16 v3, v16

    move-object/from16 v1, v19

    goto/16 :goto_1

    .line 50
    .end local v16    # "minNoteLength":Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    .end local v19    # "openNotes":Ljava/util/Map;, "Ljava/util/Map<Lorg/catrobat/catroid/pocketmusic/note/NoteName;Ljava/lang/Long;>;"
    .local v1, "openNotes":Ljava/util/Map;, "Ljava/util/Map<Lorg/catrobat/catroid/pocketmusic/note/NoteName;Ljava/lang/Long;>;"
    .restart local v3    # "minNoteLength":Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    :cond_4
    move-object/from16 v19, v1

    move-object/from16 v16, v3

    .line 79
    .end local v1    # "openNotes":Ljava/util/Map;, "Ljava/util/Map<Lorg/catrobat/catroid/pocketmusic/note/NoteName;Ljava/lang/Long;>;"
    .end local v3    # "minNoteLength":Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    .end local v5    # "tick":Ljava/lang/Long;
    .restart local v16    # "minNoteLength":Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    .restart local v19    # "openNotes":Ljava/util/Map;, "Ljava/util/Map<Lorg/catrobat/catroid/pocketmusic/note/NoteName;Ljava/lang/Long;>;"
    move/from16 v0, p2

    goto/16 :goto_0

    .line 81
    .end local v16    # "minNoteLength":Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    .end local v19    # "openNotes":Ljava/util/Map;, "Ljava/util/Map<Lorg/catrobat/catroid/pocketmusic/note/NoteName;Ljava/lang/Long;>;"
    .restart local v1    # "openNotes":Ljava/util/Map;, "Ljava/util/Map<Lorg/catrobat/catroid/pocketmusic/note/NoteName;Ljava/lang/Long;>;"
    .restart local v3    # "minNoteLength":Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    :cond_5
    move-object/from16 v8, p0

    move-object/from16 v19, v1

    move-object/from16 v16, v3

    .end local v1    # "openNotes":Ljava/util/Map;, "Ljava/util/Map<Lorg/catrobat/catroid/pocketmusic/note/NoteName;Ljava/lang/Long;>;"
    .end local v3    # "minNoteLength":Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    .restart local v16    # "minNoteLength":Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    .restart local v19    # "openNotes":Ljava/util/Map;, "Ljava/util/Map<Lorg/catrobat/catroid/pocketmusic/note/NoteName;Ljava/lang/Long;>;"
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/pocketmusic/note/Track;->getKey()Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/pocketmusic/note/Track;->getInstrument()Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v5, p1

    invoke-direct {v0, v1, v3, v5, v4}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;-><init>(Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;Ljava/util/List;)V

    return-object v0
.end method
