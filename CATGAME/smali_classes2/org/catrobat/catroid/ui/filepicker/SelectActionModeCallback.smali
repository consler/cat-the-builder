.class public Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback;
.super Ljava/lang/Object;
.source "SelectActionModeCallback.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback$ActionModeClickListener;
    }
.end annotation


# instance fields
.field private clickListener:Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback$ActionModeClickListener;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback$ActionModeClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback$ActionModeClickListener;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback;->clickListener:Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback$ActionModeClickListener;

    .line 39
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 66
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a031b

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0616

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback;->clickListener:Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback$ActionModeClickListener;

    invoke-interface {v0}, Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback$ActionModeClickListener;->onToggleSelection()V

    .line 69
    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback;->clickListener:Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback$ActionModeClickListener;

    invoke-interface {v0}, Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback$ActionModeClickListener;->onConfirm()V

    .line 74
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 43
    iget-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback;->clickListener:Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback$ActionModeClickListener;

    invoke-interface {v0}, Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback$ActionModeClickListener;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 44
    .local v0, "menuInflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 45
    const v1, 0x7f0a049c

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 46
    const v1, 0x7f0a0616

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 47
    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 79
    iget-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback;->clickListener:Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback$ActionModeClickListener;

    invoke-interface {v0}, Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback$ActionModeClickListener;->endMultiSelectionMode()V

    .line 80
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 52
    const v0, 0x7f0a049c

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 53
    const v0, 0x7f0a0616

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 54
    .local v0, "selectionToggle":Landroid/view/MenuItem;
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 55
    iget-object v2, p0, Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback;->clickListener:Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback$ActionModeClickListener;

    invoke-interface {v2}, Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback$ActionModeClickListener;->hasUnselectedItems()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    const v2, 0x7f120726

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 58
    :cond_0
    const v2, 0x7f12025f

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 61
    :goto_0
    return v1
.end method
