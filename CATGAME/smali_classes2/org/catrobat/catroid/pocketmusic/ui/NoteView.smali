.class public Lorg/catrobat/catroid/pocketmusic/ui/NoteView;
.super Landroid/widget/ImageView;
.source "NoteView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final FULL_VISIBLE:I = 0xff

.field private static final HIDDEN:I


# instance fields
.field private final horizontalIndexInGridRowPosition:I

.field private noteDrawable:Landroid/graphics/drawable/Drawable;

.field private toggled:Z

.field private trackRowView:Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;-><init>(Landroid/content/Context;Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trackRowView"    # Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;
    .param p3, "horizontalIndexInGridRowPosition"    # I

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p0, p0}, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->setAdjustViewBounds(Z)V

    .line 55
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 56
    invoke-direct {p0}, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->initNoteDrawable()V

    .line 57
    iput-object p2, p0, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->trackRowView:Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;

    .line 58
    iput p3, p0, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->horizontalIndexInGridRowPosition:I

    .line 59
    return-void
.end method

.method private initNoteDrawable()V
    .locals 3

    .line 62
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08020f

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->noteDrawable:Landroid/graphics/drawable/Drawable;

    .line 63
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06010a

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 64
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->noteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 65
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->noteDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 66
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->noteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    return-void
.end method

.method private showNote()V
    .locals 2

    .line 99
    iget-boolean v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->toggled:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->noteDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->noteDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 104
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->invalidate()V

    .line 105
    return-void
.end method

.method private updateGridRow()V
    .locals 4

    .line 95
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->trackRowView:Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;

    iget v1, p0, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->horizontalIndexInGridRowPosition:I

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->QUARTER:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    iget-boolean v3, p0, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->toggled:Z

    invoke-virtual {v0, v1, v2, v3}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->updateGridRowPosition(ILorg/catrobat/catroid/pocketmusic/note/NoteLength;Z)V

    .line 96
    return-void
.end method


# virtual methods
.method public isToggled()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->toggled:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 81
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->trackRowView:Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;

    iget-boolean v0, v0, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->allowOnlySingleNote:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->trackRowView:Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->alertNoteChanged()V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->toggle()V

    .line 86
    :goto_0
    return-void
.end method

.method public setNoteActive(ZZ)V
    .locals 1
    .param p1, "active"    # Z
    .param p2, "updateData"    # Z

    .line 70
    iget-boolean v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->toggled:Z

    if-eq v0, p1, :cond_0

    .line 71
    iput-boolean p1, p0, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->toggled:Z

    .line 72
    invoke-direct {p0}, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->showNote()V

    .line 73
    if-eqz p2, :cond_0

    .line 74
    invoke-direct {p0}, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->updateGridRow()V

    .line 77
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 89
    iget-boolean v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->toggled:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->toggled:Z

    .line 90
    invoke-direct {p0}, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->showNote()V

    .line 91
    invoke-direct {p0}, Lorg/catrobat/catroid/pocketmusic/ui/NoteView;->updateGridRow()V

    .line 92
    return-void
.end method
