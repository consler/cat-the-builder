.class final Lorg/catrobat/catroid/content/bricks/SetPenColorBrick$SetPenColorBrickCallback;
.super Ljava/lang/Object;
.source "SetPenColorBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SetPenColorBrickCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;

.field private final view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;

    .line 105
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick$SetPenColorBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick$SetPenColorBrickCallback;->view:Landroid/view/View;

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;Landroid/view/View;Lorg/catrobat/catroid/content/bricks/SetPenColorBrick$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Lorg/catrobat/catroid/content/bricks/SetPenColorBrick$1;

    .line 102
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick$SetPenColorBrickCallback;-><init>(Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;Landroid/view/View;)V

    return-void
.end method

.method private getColorValueFromBrickField(Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)I
    .locals 4
    .param p1, "brickField"    # Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 133
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick$SetPenColorBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v0

    .line 135
    .local v0, "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 136
    .local v1, "value":I
    const/16 v3, 0xff

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 137
    .end local v1    # "value":I
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    return v2
.end method


# virtual methods
.method public getValue()I
    .locals 4

    .line 126
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_COLOR_RED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick$SetPenColorBrickCallback;->getColorValueFromBrickField(Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)I

    move-result v0

    .line 127
    .local v0, "red":I
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_COLOR_GREEN:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick$SetPenColorBrickCallback;->getColorValueFromBrickField(Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)I

    move-result v1

    .line 128
    .local v1, "green":I
    sget-object v2, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_COLOR_BLUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick$SetPenColorBrickCallback;->getColorValueFromBrickField(Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)I

    move-result v2

    .line 129
    .local v2, "blue":I
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    return v3
.end method

.method public setValue(I)V
    .locals 4
    .param p1, "value"    # I

    .line 116
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick$SetPenColorBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_COLOR_RED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 117
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick$SetPenColorBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_COLOR_GREEN:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 118
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick$SetPenColorBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_COLOR_BLUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 120
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick$SetPenColorBrickCallback;->view:Landroid/view/View;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromView(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    .line 121
    .local v0, "activity":Landroidx/appcompat/app/AppCompatActivity;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick$SetPenColorBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->notifyDataSetChanged(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 122
    return-void
.end method

.method public showFormulaEditor(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 111
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick$SetPenColorBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;

    invoke-static {v0, p1}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->access$100(Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;Landroid/view/View;)V

    .line 112
    return-void
.end method
