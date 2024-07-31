.class public Lorg/catrobat/catroid/content/strategy/ShowNotePickerFormulaEditorStrategy;
.super Ljava/lang/Object;
.source "ShowNotePickerFormulaEditorStrategy.java"

# interfaces
.implements Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy;


# static fields
.field private static final OPTION_FORMULA_EDIT_BRICK:I = 0x1

.field private static final OPTION_PICK_NOTE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isViewInScriptFragment(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 54
    invoke-static {p1}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromView(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    .line 55
    .local v0, "activity":Landroidx/appcompat/app/AppCompatActivity;
    if-nez v0, :cond_0

    .line 56
    const/4 v1, 0x0

    return v1

    .line 59
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 60
    .local v1, "supportFragmentManager":Landroidx/fragment/app/FragmentManager;
    const v2, 0x7f0a03b7

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 62
    .local v2, "currentFragment":Landroidx/fragment/app/Fragment;
    instance-of v3, v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    return v3
.end method

.method private showNotePicker(Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;Landroidx/fragment/app/FragmentManager;)V
    .locals 4
    .param p1, "callback"    # Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;
    .param p2, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;

    .line 94
    invoke-interface {p1}, Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;->getValue()I

    move-result v0

    .line 95
    .local v0, "currentNote":I
    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->newInstance(I)Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;

    move-result-object v1

    .line 96
    .local v1, "dialog":Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/catrobat/catroid/content/strategy/-$$Lambda$aVOBCfO419W75dYOGjBHPqKloQc;

    invoke-direct {v2, p1}, Lorg/catrobat/catroid/content/strategy/-$$Lambda$aVOBCfO419W75dYOGjBHPqKloQc;-><init>(Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;)V

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->addOnNotePickedListener(Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog$OnNotePickedListener;)V

    .line 97
    const/4 v2, 0x0

    const v3, 0x7f130005

    invoke-virtual {v1, v2, v3}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->setStyle(II)V

    .line 98
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private showSelectEditDialog(Landroid/view/View;Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;

    .line 66
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/catrobat/catroid/content/strategy/-$$Lambda$ShowNotePickerFormulaEditorStrategy$T_kePHth7lX88gRBdJ-O14ZABM8;

    invoke-direct {v1, p0, p2, p1}, Lorg/catrobat/catroid/content/strategy/-$$Lambda$ShowNotePickerFormulaEditorStrategy$T_kePHth7lX88gRBdJ-O14ZABM8;-><init>(Lorg/catrobat/catroid/content/strategy/ShowNotePickerFormulaEditorStrategy;Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;Landroid/view/View;)V

    .line 67
    const v2, 0x7f03000b

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 70
    return-void
.end method

.method private switchSelectEditDialogOption(Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;Landroid/view/View;I)V
    .locals 3
    .param p1, "callback"    # Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "which"    # I

    .line 73
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 86
    invoke-interface {p1, p2}, Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;->showFormulaEditor(Landroid/view/View;)V

    .line 87
    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 75
    :cond_1
    invoke-static {p2}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromView(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    .line 76
    .local v0, "activity":Landroidx/appcompat/app/AppCompatActivity;
    if-nez v0, :cond_2

    .line 77
    return-void

    .line 79
    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 80
    .local v1, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 81
    return-void

    .line 83
    :cond_3
    invoke-direct {p0, p1, v1}, Lorg/catrobat/catroid/content/strategy/ShowNotePickerFormulaEditorStrategy;->showNotePicker(Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;Landroidx/fragment/app/FragmentManager;)V

    .line 84
    nop

    .line 91
    .end local v0    # "activity":Landroidx/appcompat/app/AppCompatActivity;
    .end local v1    # "fragmentManager":Landroidx/fragment/app/FragmentManager;
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$showSelectEditDialog$0$ShowNotePickerFormulaEditorStrategy(Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "callback"    # Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .line 68
    invoke-direct {p0, p1, p2, p4}, Lorg/catrobat/catroid/content/strategy/ShowNotePickerFormulaEditorStrategy;->switchSelectEditDialogOption(Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;Landroid/view/View;I)V

    return-void
.end method

.method public showFormulaEditorToEditFormula(Landroid/view/View;Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;

    .line 46
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/strategy/ShowNotePickerFormulaEditorStrategy;->isViewInScriptFragment(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/content/strategy/ShowNotePickerFormulaEditorStrategy;->showSelectEditDialog(Landroid/view/View;Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-interface {p2, p1}, Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;->showFormulaEditor(Landroid/view/View;)V

    .line 51
    :goto_0
    return-void
.end method
