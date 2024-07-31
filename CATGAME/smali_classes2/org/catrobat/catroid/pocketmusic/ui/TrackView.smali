.class public Lorg/catrobat/catroid/pocketmusic/ui/TrackView;
.super Landroid/widget/TableLayout;
.source "TrackView.java"


# static fields
.field public static final BLACK_KEY_INDICES:[I

.field public static final HIGHEST_MIDI:I = 0x82

.field public static final ROW_COUNT:I = 0xd

.field public static final WHITE_KEY_INDICES:[I


# instance fields
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
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->BLACK_KEY_INDICES:[I

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->WHITE_KEY_INDICES:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x3
        0x6
        0x8
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
        0x4
        0x5
        0x7
        0x9
        0xb
        0xc
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    sget-object v1, Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;->VIOLIN:Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;->ACCORDION:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->BEAT_4_4:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;-><init>(Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;Ljava/util/List;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "trackGrid"    # Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->trackRowViews:Ljava/util/List;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->tactPosition:I

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->setStretchAllColumns(Z)V

    .line 67
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->setClickable(Z)V

    .line 68
    iput-object p3, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->trackGrid:Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    .line 69
    invoke-direct {p0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->initializeRows()V

    .line 70
    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->setWeightSum(F)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trackGrid"    # Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;)V

    .line 62
    return-void
.end method

.method private initializeRows()V
    .locals 12

    .line 74
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->trackRowViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->removeAllViews()V

    .line 76
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->trackRowViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 78
    :cond_0
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/TableLayout$LayoutParams;-><init>(IIF)V

    .line 79
    .local v0, "params":Landroid/widget/TableLayout$LayoutParams;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0xd

    if-ge v1, v4, :cond_2

    .line 80
    sget-object v4, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->BLACK_KEY_INDICES:[I

    invoke-static {v4, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    if-le v4, v2, :cond_1

    const/4 v4, 0x1

    move v8, v4

    goto :goto_1

    :cond_1
    move v8, v3

    .line 81
    .local v8, "isBlackRow":Z
    :goto_1
    invoke-static {v1}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->getMidiValueForRow(I)I

    move-result v4

    invoke-static {v4}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->getNoteNameFromMidiValue(I)Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v4

    .line 82
    .local v4, "noteName":Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    new-instance v11, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;

    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v5, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->trackGrid:Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    invoke-virtual {v5}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->getBeat()Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    move-result-object v7

    move-object v5, v11

    move-object v9, v4

    move-object v10, p0

    invoke-direct/range {v5 .. v10}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;-><init>(Landroid/content/Context;Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;ZLorg/catrobat/catroid/pocketmusic/note/NoteName;Lorg/catrobat/catroid/pocketmusic/ui/TrackView;)V

    .line 83
    .local v5, "trackRowView":Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;
    iget v6, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->tactPosition:I

    iget-object v7, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->trackGrid:Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    invoke-virtual {v7, v4}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->getGridRowForNoteName(Lorg/catrobat/catroid/pocketmusic/note/NoteName;)Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->setTactPosition(ILorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;)V

    .line 84
    iget-object v6, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->trackRowViews:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v6, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->trackRowViews:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {p0, v6, v0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .end local v4    # "noteName":Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    .end local v5    # "trackRowView":Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;
    .end local v8    # "isBlackRow":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public getTrackRowViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->trackRowViews:Ljava/util/List;

    return-object v0
.end method

.method public updateDataForTactPosition(I)V
    .locals 4
    .param p1, "tactPosition"    # I

    .line 94
    iput p1, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->tactPosition:I

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    .line 96
    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->getMidiValueForRow(I)I

    move-result v1

    invoke-static {v1}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->getNoteNameFromMidiValue(I)Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v1

    .line 97
    .local v1, "noteName":Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->trackRowViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;

    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->trackGrid:Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    invoke-virtual {v3, v1}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->getGridRowForNoteName(Lorg/catrobat/catroid/pocketmusic/note/NoteName;)Lorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->setTactPosition(ILorg/catrobat/catroid/pocketmusic/note/trackgrid/GridRow;)V

    .line 95
    .end local v1    # "noteName":Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public updateGridRowPosition(Lorg/catrobat/catroid/pocketmusic/note/NoteName;ILorg/catrobat/catroid/pocketmusic/note/NoteLength;Z)V
    .locals 6
    .param p1, "noteName"    # Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    .param p2, "columnIndex"    # I
    .param p3, "noteLength"    # Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    .param p4, "toggled"    # Z

    .line 102
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->trackGrid:Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    iget v4, p0, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->tactPosition:I

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->updateGridRowPosition(Lorg/catrobat/catroid/pocketmusic/note/NoteName;ILorg/catrobat/catroid/pocketmusic/note/NoteLength;IZ)V

    .line 103
    return-void
.end method
