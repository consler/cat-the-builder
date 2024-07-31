.class public Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;
.super Landroid/widget/TableRow;
.source "TrackRowView.java"


# static fields
.field public static final INITIAL_QUARTER_COUNT:I = 0x4

.field public static quarterCount:I


# instance fields
.field public allowOnlySingleNote:Z

.field private final beat:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

.field private gridRow:Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;

.field private isBlackRow:Z

.field private noteName:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

.field private notePickerView:Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;

.field private noteViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/pocketmusic/ui/NoteView;",
            ">;"
        }
    .end annotation
.end field

.field private tactPosition:I

.field private trackView:Lorg/catrobat/catroid/pocketmusic/ui/TrackView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->BEAT_4_4:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    sget-object v4, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->DEFAULT_NOTE_NAME:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;-><init>(Landroid/content/Context;Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;ZLorg/catrobat/catroid/pocketmusic/note/NoteName;Lorg/catrobat/catroid/pocketmusic/ui/TrackView;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;ZLorg/catrobat/catroid/pocketmusic/note/NoteName;Lorg/catrobat/catroid/pocketmusic/ui/TrackView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "beat"    # Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;
    .param p3, "isBlackRow"    # Z
    .param p4, "noteName"    # Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    .param p5, "trackView"    # Lorg/catrobat/catroid/pocketmusic/ui/TrackView;

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->tactPosition:I

    .line 51
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->trackView:Lorg/catrobat/catroid/pocketmusic/ui/TrackView;

    .line 52
    iput-object v1, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->notePickerView:Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;

    .line 53
    iput-boolean v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->allowOnlySingleNote:Z

    .line 62
    iput-object p2, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->beat:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    .line 63
    iput-object p4, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->noteName:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    .line 64
    iput-object p5, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->trackView:Lorg/catrobat/catroid/pocketmusic/ui/TrackView;

    .line 65
    const/4 v0, 0x4

    sput v0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->quarterCount:I

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->noteViews:Ljava/util/List;

    .line 67
    invoke-virtual {p0, p3}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->setBlackRow(Z)V

    .line 68
    invoke-direct {p0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->initializeRow()V

    .line 69
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->setWeightSum(F)V

    .line 70
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->updateGridRow()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;ZLorg/catrobat/catroid/pocketmusic/ui/NotePickerView;Lorg/catrobat/catroid/pocketmusic/note/NoteName;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "beat"    # Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;
    .param p3, "isBlackRow"    # Z
    .param p4, "notePickerView"    # Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;
    .param p5, "noteName"    # Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    .param p6, "quarterCount"    # I

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->tactPosition:I

    .line 51
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->trackView:Lorg/catrobat/catroid/pocketmusic/ui/TrackView;

    .line 52
    iput-object v1, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->notePickerView:Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;

    .line 53
    iput-boolean v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->allowOnlySingleNote:Z

    .line 76
    iput-object p2, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->beat:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    .line 77
    iput-object p5, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->noteName:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    .line 78
    iput-object p4, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->notePickerView:Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;

    .line 79
    sput p6, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->quarterCount:I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->noteViews:Ljava/util/List;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->allowOnlySingleNote:Z

    .line 82
    invoke-virtual {p0, p3}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->setBlackRow(Z)V

    .line 83
    invoke-direct {p0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->initializeRow()V

    .line 84
    int-to-float v0, p6

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->setWeightSum(F)V

    .line 85
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->updateGridRow()V

    .line 86
    return-void
.end method

.method private getGridRowsForCurrentTact()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->gridRow:Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;

    iget v1, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->tactPosition:I

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->gridRowForTact(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getMidiValueForRow(I)I
    .locals 1
    .param p0, "row"    # I

    .line 191
    mul-int/lit16 v0, p0, 0x82

    div-int/lit8 v0, v0, 0xd

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private initializeRow()V
    .locals 5

    .line 140
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 141
    .local v0, "params":Landroid/widget/TableRow$LayoutParams;
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 142
    const v2, 0x7f07018b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/TableRow$LayoutParams;->bottomMargin:I

    iput v1, v0, Landroid/widget/TableRow$LayoutParams;->rightMargin:I

    iput v1, v0, Landroid/widget/TableRow$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/TableRow$LayoutParams;->leftMargin:I

    .line 144
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->quarterCount:I

    if-ge v1, v2, :cond_0

    .line 145
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->noteViews:Ljava/util/List;

    new-instance v3, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;

    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0, v1}, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;-><init>(Landroid/content/Context;Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->noteViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private refreshNoteViews()V
    .locals 5

    .line 97
    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->tactPosition:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06010d

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 99
    .local v0, "whiteKeyColor":I
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06010e

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .local v1, "blackKeyColor":I
    goto :goto_0

    .line 101
    .end local v0    # "whiteKeyColor":I
    .end local v1    # "blackKeyColor":I
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06010b

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 102
    .restart local v0    # "whiteKeyColor":I
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06010c

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 104
    .restart local v1    # "blackKeyColor":I
    :goto_0
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->noteViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;

    .line 105
    .local v3, "noteView":Lorg/catrobat/catroid/pocketmusic/ui/NoteView;
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->setNoteActive(ZZ)V

    .line 106
    iget-boolean v4, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->isBlackRow:Z

    if-eqz v4, :cond_1

    .line 107
    invoke-virtual {v3, v1}, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->setBackgroundColor(I)V

    goto :goto_2

    .line 109
    :cond_1
    invoke-virtual {v3, v0}, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->setBackgroundColor(I)V

    .line 111
    .end local v3    # "noteView":Lorg/catrobat/catroid/pocketmusic/ui/NoteView;
    :goto_2
    goto :goto_1

    .line 112
    :cond_2
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->updateGridRow()V

    .line 113
    return-void
.end method

.method private setNoteForGridRowPosition(Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;)V
    .locals 10
    .param p1, "position"    # Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;

    .line 129
    if-eqz p1, :cond_0

    .line 130
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;->getNoteLength()Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->toMilliseconds(I)J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    .line 131
    .local v0, "divident":Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->beat:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->getNoteLength()Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->toMilliseconds(I)J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    .line 132
    .local v1, "divisor":Ljava/math/BigDecimal;
    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v3

    .line 133
    .local v3, "length":J
    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;->getColumnStartIndex()I

    move-result v5

    .local v5, "j":I
    :goto_0
    int-to-long v6, v5

    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;->getColumnStartIndex()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v3

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 134
    iget-object v6, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->noteViews:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->setNoteActive(ZZ)V

    .line 133
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "divident":Ljava/math/BigDecimal;
    .end local v1    # "divisor":Ljava/math/BigDecimal;
    .end local v3    # "length":J
    .end local v5    # "j":I
    :cond_0
    return-void
.end method


# virtual methods
.method public alertNoteChanged()V
    .locals 2

    .line 175
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->notePickerView:Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->disableAllNotes()V

    .line 177
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->notePickerView:Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;

    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->gridRow:Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getNoteName()Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->getMidi()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->setSelectedNote(I)V

    .line 178
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->notePickerView:Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->onNoteChanged()V

    .line 180
    :cond_0
    return-void
.end method

.method public disableOwnNotes()V
    .locals 4

    .line 183
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->noteViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;

    .line 184
    .local v1, "noteview":Lorg/catrobat/catroid/pocketmusic/ui/NoteView;
    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->isToggled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->setNoteActive(ZZ)V

    .line 187
    .end local v1    # "noteview":Lorg/catrobat/catroid/pocketmusic/ui/NoteView;
    :cond_0
    goto :goto_0

    .line 188
    :cond_1
    return-void
.end method

.method public getNoteViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/pocketmusic/ui/NoteView;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->noteViews:Ljava/util/List;

    return-object v0
.end method

.method public getTactCount()I
    .locals 1

    .line 167
    sget v0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->quarterCount:I

    return v0
.end method

.method public setBlackRow(Z)V
    .locals 0
    .param p1, "blackRow"    # Z

    .line 171
    iput-boolean p1, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->isBlackRow:Z

    .line 172
    return-void
.end method

.method public setTactPosition(ILorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;)V
    .locals 0
    .param p1, "tactPosition"    # I
    .param p2, "gridRow"    # Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;

    .line 89
    iput-object p2, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->gridRow:Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;

    .line 90
    iput p1, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->tactPosition:I

    .line 91
    invoke-direct {p0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->refreshNoteViews()V

    .line 92
    return-void
.end method

.method public updateGridRow()V
    .locals 3

    .line 116
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->gridRow:Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;->getGridRowPositions()Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 119
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->getGridRowsForCurrentTact()Ljava/util/List;

    move-result-object v0

    .line 120
    .local v0, "gridRowTact":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;>;"
    if-eqz v0, :cond_1

    .line 121
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 122
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;

    .line 123
    .local v2, "position":Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;
    invoke-direct {p0, v2}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->setNoteForGridRowPosition(Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;)V

    .line 121
    .end local v2    # "position":Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 117
    .end local v0    # "gridRowTact":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRowPosition;>;"
    :cond_2
    :goto_1
    return-void
.end method

.method public updateGridRowPosition(ILorg/catrobat/catroid/pocketmusic/note/NoteLength;Z)V
    .locals 2
    .param p1, "columnIndex"    # I
    .param p2, "noteLength"    # Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    .param p3, "toggled"    # Z

    .line 151
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->trackView:Lorg/catrobat/catroid/pocketmusic/ui/TrackView;

    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->noteName:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->updateGridRowPosition(Lorg/catrobat/catroid/pocketmusic/note/NoteName;ILorg/catrobat/catroid/pocketmusic/note/NoteLength;Z)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->notePickerView:Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;

    if-eqz v0, :cond_1

    .line 154
    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->noteName:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->updateGridRowPosition(Lorg/catrobat/catroid/pocketmusic/note/NoteName;ILorg/catrobat/catroid/pocketmusic/note/NoteLength;Z)V

    .line 156
    :cond_1
    :goto_0
    return-void
.end method
