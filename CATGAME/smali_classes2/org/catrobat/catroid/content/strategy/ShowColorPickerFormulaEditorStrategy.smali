.class public Lorg/catrobat/catroid/content/strategy/ShowColorPickerFormulaEditorStrategy;
.super Ljava/lang/Object;
.source "ShowColorPickerFormulaEditorStrategy.java"

# interfaces
.implements Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy;


# static fields
.field private static final OPTION_FORMULA_EDIT_BRICK:I = 0x1

.field private static final OPTION_PICK_COLOR:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isInCorrectFragment(Landroid/view/View;Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;

    .line 56
    invoke-static {p1}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromView(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    .line 57
    .local v0, "activity":Landroidx/appcompat/app/AppCompatActivity;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 58
    return v1

    .line 61
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 62
    .local v2, "supportFragmentManager":Landroidx/fragment/app/FragmentManager;
    const v3, 0x7f0a03b7

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 64
    .local v3, "currentFragment":Landroidx/fragment/app/Fragment;
    instance-of v4, v3, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    if-eqz v4, :cond_1

    .line 65
    invoke-interface {p2, p1}, Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;->showFormulaEditor(Landroid/view/View;)V

    .line 68
    :cond_1
    instance-of v4, v3, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    if-nez v4, :cond_2

    instance-of v4, v3, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    if-eqz v4, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private showColorPicker(Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;Landroidx/fragment/app/FragmentManager;)V
    .locals 4
    .param p1, "callback"    # Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;
    .param p2, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;

    .line 100
    invoke-interface {p1}, Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;->getValue()I

    move-result v0

    .line 101
    .local v0, "currentColor":I
    sget-object v1, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->Companion:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, v2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;->newInstance(IZZ)Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    move-result-object v1

    .line 104
    .local v1, "dialog":Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-static {v2}, Lorg/catrobat/catroid/utils/ProjectManagerExtensionsKt;->getProjectBitmap(Lorg/catrobat/catroid/ProjectManager;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 105
    .local v2, "projectBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/catrobat/catroid/content/strategy/-$$Lambda$GZOvFV0Fyj4_E50AhcYN8XqlH0U;

    invoke-direct {v3, p1}, Lorg/catrobat/catroid/content/strategy/-$$Lambda$GZOvFV0Fyj4_E50AhcYN8XqlH0U;-><init>(Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;)V

    invoke-virtual {v1, v3}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->addOnColorPickedListener(Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;)V

    .line 107
    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private showSelectEditDialog(Landroid/view/View;Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;

    .line 72
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/catrobat/catroid/content/strategy/-$$Lambda$ShowColorPickerFormulaEditorStrategy$Xo_jEdFkPOPqsgX3YR1nlAw-Nbs;

    invoke-direct {v1, p0, p2, p1}, Lorg/catrobat/catroid/content/strategy/-$$Lambda$ShowColorPickerFormulaEditorStrategy$Xo_jEdFkPOPqsgX3YR1nlAw-Nbs;-><init>(Lorg/catrobat/catroid/content/strategy/ShowColorPickerFormulaEditorStrategy;Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;Landroid/view/View;)V

    .line 73
    const v2, 0x7f03000a

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 76
    return-void
.end method

.method private switchSelectEditDialogOption(Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;Landroid/view/View;I)V
    .locals 3
    .param p1, "callback"    # Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "which"    # I

    .line 79
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 92
    invoke-interface {p1, p2}, Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;->showFormulaEditor(Landroid/view/View;)V

    .line 93
    goto :goto_0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 81
    :cond_1
    invoke-static {p2}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromView(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    .line 82
    .local v0, "activity":Landroidx/appcompat/app/AppCompatActivity;
    if-nez v0, :cond_2

    .line 83
    return-void

    .line 85
    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 86
    .local v1, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    return-void

    .line 89
    :cond_3
    invoke-direct {p0, p1, v1}, Lorg/catrobat/catroid/content/strategy/ShowColorPickerFormulaEditorStrategy;->showColorPicker(Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;Landroidx/fragment/app/FragmentManager;)V

    .line 90
    nop

    .line 97
    .end local v0    # "activity":Landroidx/appcompat/app/AppCompatActivity;
    .end local v1    # "fragmentManager":Landroidx/fragment/app/FragmentManager;
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$showSelectEditDialog$0$ShowColorPickerFormulaEditorStrategy(Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "callback"    # Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .line 74
    invoke-direct {p0, p1, p2, p4}, Lorg/catrobat/catroid/content/strategy/ShowColorPickerFormulaEditorStrategy;->switchSelectEditDialogOption(Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;Landroid/view/View;I)V

    return-void
.end method

.method public showFormulaEditorToEditFormula(Landroid/view/View;Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/content/strategy/ShowColorPickerFormulaEditorStrategy;->isInCorrectFragment(Landroid/view/View;Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/content/strategy/ShowColorPickerFormulaEditorStrategy;->showSelectEditDialog(Landroid/view/View;Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {p2, p1}, Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;->showFormulaEditor(Landroid/view/View;)V

    .line 53
    :goto_0
    return-void
.end method
