.class public Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;
.super Landroid/widget/TableLayout;
.source "NotePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView$OnNoteChangedListener;
    }
.end annotation


# static fields
.field public static final ROW_COUNT:I = 0xd


# instance fields
.field private initialNote:I

.field private listener:Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView$OnNoteChangedListener;

.field private selectedNote:I

.field private tactPosition:I

.field private trackGrid:Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

.field private trackRowViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 53
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    sget-object v1, Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;->VIOLIN:Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;->ACCORDION:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->BEAT_4_4:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;-><init>(Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;Ljava/util/List;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "trackGrid"    # Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->trackRowViews:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->tactPosition:I

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->setStretchAllColumns(Z)V

    .line 60
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->setClickable(Z)V

    .line 61
    iput-object p3, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->trackGrid:Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    .line 62
    invoke-direct {p0}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->initializeRows()V

    .line 63
    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->setWeightSum(F)V

    .line 64
    return-void
.end method

.method private initializeRows()V
    .locals 15

    .line 67
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->trackRowViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->removeAllViews()V

    .line 69
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->trackRowViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 71
    :cond_0
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/TableLayout$LayoutParams;-><init>(IIF)V

    .line 72
    .local v0, "params":Landroid/widget/TableLayout$LayoutParams;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0xd

    if-ge v1, v4, :cond_2

    .line 73
    sget-object v4, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->BLACK_KEY_INDICES:[I

    invoke-static {v4, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    if-le v4, v2, :cond_1

    const/4 v4, 0x1

    move v8, v4

    goto :goto_1

    :cond_1
    move v8, v3

    .line 74
    .local v8, "isBlackRow":Z
    :goto_1
    invoke-static {v1}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->getMidiValueForRow(I)I

    move-result v4

    invoke-static {v4}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->getNoteNameFromMidiValue(I)Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v4

    .line 75
    .local v4, "noteName":Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    new-instance v12, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;

    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v5, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->trackGrid:Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    invoke-virtual {v5}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->getBeat()Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    move-result-object v7

    const/4 v11, 0x1

    move-object v5, v12

    move-object v9, p0

    move-object v10, v4

    invoke-direct/range {v5 .. v11}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;-><init>(Landroid/content/Context;Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;ZLorg/catrobat/catroid/pocketmusic/ui/NotePickerView;Lorg/catrobat/catroid/pocketmusic/note/NoteName;I)V

    .line 77
    .local v5, "trackRowView":Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;
    iget-object v9, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->trackGrid:Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    const/4 v11, 0x0

    sget-object v12, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->QUARTER:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->updateGridRowPosition(Lorg/catrobat/catroid/pocketmusic/note/NoteName;ILorg/catrobat/catroid/pocketmusic/note/NoteLength;IZ)V

    .line 78
    iget v6, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->tactPosition:I

    iget-object v7, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->trackGrid:Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    invoke-virtual {v7, v4}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->getGridRowForNoteName(Lorg/catrobat/catroid/pocketmusic/note/NoteName;)Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->setTactPosition(ILorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;)V

    .line 79
    iget-object v6, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->trackRowViews:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v6, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->trackRowViews:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {p0, v6, v0}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .end local v4    # "noteName":Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    .end local v5    # "trackRowView":Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;
    .end local v8    # "isBlackRow":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private updateTrackRowViews(I)V
    .locals 4
    .param p1, "noteToBeSet"    # I

    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xd

    if-ge v0, v1, :cond_1

    .line 124
    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->getMidiValueForRow(I)I

    move-result v1

    .line 125
    .local v1, "tempNote":I
    if-ne v1, p1, :cond_0

    .line 126
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->trackRowViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;

    invoke-virtual {v2}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->getNoteViews()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->setNoteActive(ZZ)V

    .line 127
    goto :goto_1

    .line 123
    .end local v1    # "tempNote":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public disableAllNotes()V
    .locals 2

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    .line 86
    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->trackRowViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->disableOwnNotes()V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getInitialNote()I
    .locals 1

    .line 133
    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->initialNote:I

    return v0
.end method

.method public getSelectedNote()I
    .locals 1

    .line 109
    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->selectedNote:I

    return v0
.end method

.method public onNoteChanged()V
    .locals 2

    .line 103
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->listener:Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView$OnNoteChangedListener;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->getSelectedNote()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView$OnNoteChangedListener;->noteChanged(I)V

    .line 106
    :cond_0
    return-void
.end method

.method public setInitialNote(I)V
    .locals 0
    .param p1, "initialNote"    # I

    .line 118
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->updateTrackRowViews(I)V

    .line 119
    iput p1, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->initialNote:I

    .line 120
    return-void
.end method

.method public setOnNoteChangedListener(Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView$OnNoteChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView$OnNoteChangedListener;

    .line 95
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->listener:Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView$OnNoteChangedListener;

    .line 96
    return-void
.end method

.method public setSelectedNote(I)V
    .locals 0
    .param p1, "note"    # I

    .line 113
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->updateTrackRowViews(I)V

    .line 114
    iput p1, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->selectedNote:I

    .line 115
    return-void
.end method

.method public updateGridRowPosition(Lorg/catrobat/catroid/pocketmusic/note/NoteName;ILorg/catrobat/catroid/pocketmusic/note/NoteLength;Z)V
    .locals 6
    .param p1, "noteName"    # Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    .param p2, "columnIndex"    # I
    .param p3, "noteLength"    # Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    .param p4, "toggled"    # Z

    .line 91
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->trackGrid:Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    iget v4, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->tactPosition:I

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->updateGridRowPosition(Lorg/catrobat/catroid/pocketmusic/note/NoteName;ILorg/catrobat/catroid/pocketmusic/note/NoteLength;IZ)V

    .line 92
    return-void
.end method
