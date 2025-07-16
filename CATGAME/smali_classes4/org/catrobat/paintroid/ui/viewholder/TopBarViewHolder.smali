.class public final Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;
.super Ljava/lang/Object;
.source "TopBarViewHolder.kt"

# interfaces
.implements Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u001aH\u0016J\u0008\u0010\u001c\u001a\u00020\u001aH\u0016J\u0008\u0010\u001d\u001a\u00020\u001aH\u0016J\u0008\u0010\u001e\u001a\u00020\u001aH\u0016J\u0006\u0010\u001f\u001a\u00020\u001aJ\u0008\u0010 \u001a\u00020\u001aH\u0016J\u0012\u0010!\u001a\u00020\u001a2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0012\u0010$\u001a\u00020\u001a2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0008\u0010%\u001a\u00020\u001aH\u0016J\u0006\u0010&\u001a\u00020\u001aR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0008\"\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0008R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0017\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0008\u00a8\u0006\'"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;",
        "layout",
        "Landroid/view/ViewGroup;",
        "(Landroid/view/ViewGroup;)V",
        "checkmarkButton",
        "Landroid/widget/ImageButton;",
        "getCheckmarkButton",
        "()Landroid/widget/ImageButton;",
        "height",
        "",
        "getHeight",
        "()I",
        "getLayout",
        "()Landroid/view/ViewGroup;",
        "plusButton",
        "getPlusButton",
        "setPlusButton",
        "(Landroid/widget/ImageButton;)V",
        "redoButton",
        "getRedoButton",
        "toolbar",
        "Landroidx/appcompat/widget/Toolbar;",
        "undoButton",
        "getUndoButton",
        "disableRedoButton",
        "",
        "disableUndoButton",
        "enableRedoButton",
        "enableUndoButton",
        "hide",
        "hidePlusButton",
        "hideTitleIfNotStandalone",
        "removeCatroidMenuItems",
        "menu",
        "Landroid/view/Menu;",
        "removeStandaloneMenuItems",
        "show",
        "showPlusButton",
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final checkmarkButton:Landroid/widget/ImageButton;

.field private final layout:Landroid/view/ViewGroup;

.field private plusButton:Landroid/widget/ImageButton;

.field private final redoButton:Landroid/widget/ImageButton;

.field private final toolbar:Landroidx/appcompat/widget/Toolbar;

.field private final undoButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->layout:Landroid/view/ViewGroup;

    .line 30
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_toolbar:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "layout.findViewById(R.id.pocketpaint_toolbar)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 31
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_btn_top_undo:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "layout.findViewById(R.id.pocketpaint_btn_top_undo)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->undoButton:Landroid/widget/ImageButton;

    .line 32
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_btn_top_redo:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "layout.findViewById(R.id.pocketpaint_btn_top_redo)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->redoButton:Landroid/widget/ImageButton;

    .line 33
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_btn_top_checkmark:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "layout.findViewById(R.id\u2026tpaint_btn_top_checkmark)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->checkmarkButton:Landroid/widget/ImageButton;

    .line 34
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_btn_top_plus:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "layout.findViewById(R.id.pocketpaint_btn_top_plus)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->plusButton:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public disableRedoButton()V
    .locals 2

    .line 52
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->redoButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public disableUndoButton()V
    .locals 2

    .line 44
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->undoButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public enableRedoButton()V
    .locals 2

    .line 48
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->redoButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public enableUndoButton()V
    .locals 2

    .line 40
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->undoButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public final getCheckmarkButton()Landroid/widget/ImageButton;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->checkmarkButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getLayout()Landroid/view/ViewGroup;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->layout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getPlusButton()Landroid/widget/ImageButton;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->plusButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public final getRedoButton()Landroid/widget/ImageButton;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->redoButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public final getUndoButton()Landroid/widget/ImageButton;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->undoButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 56
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->layout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final hidePlusButton()V
    .locals 2

    .line 64
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->plusButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public hideTitleIfNotStandalone()V
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public removeCatroidMenuItems(Landroid/view/Menu;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_export:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 83
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_discard_image:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    :goto_0
    return-void
.end method

.method public removeStandaloneMenuItems(Landroid/view/Menu;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_save_image:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 74
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_save_duplicate:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 75
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_new_image:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 76
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_options_rate_us:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    :goto_0
    return-void
.end method

.method public final setPlusButton(Landroid/widget/ImageButton;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->plusButton:Landroid/widget/ImageButton;

    return-void
.end method

.method public show()V
    .locals 2

    .line 60
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->layout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final showPlusButton()V
    .locals 2

    .line 68
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->plusButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method
