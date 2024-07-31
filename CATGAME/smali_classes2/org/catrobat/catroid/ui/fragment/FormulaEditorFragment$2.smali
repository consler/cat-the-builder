.class Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$2;
.super Ljava/lang/Object;
.source "FormulaEditorFragment.java"

# interfaces
.implements Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->showColorPickerDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    .line 438
    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$2;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 2

    .line 450
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$2;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getSelectedFormulaText()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "currentValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "^#[0-9A-Fa-f]{6}$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 454
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setValue(I)V
    .locals 4
    .param p1, "value"    # I

    .line 445
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$2;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0xffffff

    and-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "#%06X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->addString(Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public showFormulaEditor(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 441
    return-void
.end method
