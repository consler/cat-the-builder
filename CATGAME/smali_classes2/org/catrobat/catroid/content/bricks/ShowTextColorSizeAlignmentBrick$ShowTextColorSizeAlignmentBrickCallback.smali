.class final Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$ShowTextColorSizeAlignmentBrickCallback;
.super Ljava/lang/Object;
.source "ShowTextColorSizeAlignmentBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShowTextColorSizeAlignmentBrickCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;

    .line 231
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$ShowTextColorSizeAlignmentBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$ShowTextColorSizeAlignmentBrickCallback;->view:Landroid/view/View;

    .line 233
    return-void
.end method

.method synthetic constructor <init>(Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;Landroid/view/View;Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$1;

    .line 228
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$ShowTextColorSizeAlignmentBrickCallback;-><init>(Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;Landroid/view/View;)V

    return-void
.end method

.method private getColorBrickFieldStringValue()Ljava/lang/String;
    .locals 1

    .line 268
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$ShowTextColorSizeAlignmentBrickCallback;->getColorFormulaElement()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getColorFormulaElement()Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .locals 2

    .line 272
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$ShowTextColorSizeAlignmentBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->COLOR:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Formula;->getRoot()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v0

    return-object v0
.end method

.method private isColorBrickFieldAString()Z
    .locals 2

    .line 264
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$ShowTextColorSizeAlignmentBrickCallback;->getColorFormulaElement()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getElementType()Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->STRING:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getValue()I
    .locals 2

    .line 256
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$ShowTextColorSizeAlignmentBrickCallback;->isColorBrickFieldAString()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    const/high16 v0, -0x1000000

    return v0

    .line 259
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$ShowTextColorSizeAlignmentBrickCallback;->getColorBrickFieldStringValue()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "stringValue":Ljava/lang/String;
    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->tryParseColor(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setValue(I)V
    .locals 4
    .param p1, "value"    # I

    .line 242
    invoke-static {p1}, Lorg/catrobat/catroid/utils/ShowTextUtils;->convertColorToString(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "colorString":Ljava/lang/String;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$ShowTextColorSizeAlignmentBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;

    sget-object v2, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->COLOR:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    new-instance v3, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-direct {v3, v0}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 245
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$ShowTextColorSizeAlignmentBrickCallback;->view:Landroid/view/View;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromView(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    .line 246
    .local v1, "activity":Landroidx/appcompat/app/AppCompatActivity;
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0a03b7

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 247
    .local v2, "currentFragment":Landroidx/fragment/app/Fragment;
    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$ShowTextColorSizeAlignmentBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;

    invoke-virtual {v3, v1}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->notifyDataSetChanged(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 249
    instance-of v3, v2, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    if-eqz v3, :cond_0

    .line 250
    move-object v3, v2

    check-cast v3, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-virtual {v3}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->updateFragmentAfterColorPicker()V

    .line 252
    :cond_0
    return-void
.end method

.method public showFormulaEditor(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 237
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$ShowTextColorSizeAlignmentBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;

    invoke-static {v0, p1}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->access$200(Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;Landroid/view/View;)V

    .line 238
    return-void
.end method
