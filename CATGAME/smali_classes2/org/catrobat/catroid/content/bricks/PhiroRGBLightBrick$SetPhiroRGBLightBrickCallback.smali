.class final Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$SetPhiroRGBLightBrickCallback;
.super Ljava/lang/Object;
.source "PhiroRGBLightBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SetPhiroRGBLightBrickCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;

.field private final view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;

    .line 139
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$SetPhiroRGBLightBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$SetPhiroRGBLightBrickCallback;->view:Landroid/view/View;

    .line 141
    return-void
.end method

.method synthetic constructor <init>(Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;Landroid/view/View;Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$1;

    .line 136
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$SetPhiroRGBLightBrickCallback;-><init>(Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;Landroid/view/View;)V

    return-void
.end method

.method private getColorValueFromBrickField(Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)I
    .locals 4
    .param p1, "brickField"    # Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 167
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$SetPhiroRGBLightBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v0

    .line 169
    .local v0, "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 170
    .local v1, "value":I
    const/16 v3, 0xff

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 171
    .end local v1    # "value":I
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    return v2
.end method


# virtual methods
.method public getValue()I
    .locals 4

    .line 160
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_LIGHT_RED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$SetPhiroRGBLightBrickCallback;->getColorValueFromBrickField(Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)I

    move-result v0

    .line 161
    .local v0, "red":I
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_LIGHT_GREEN:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$SetPhiroRGBLightBrickCallback;->getColorValueFromBrickField(Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)I

    move-result v1

    .line 162
    .local v1, "green":I
    sget-object v2, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_LIGHT_BLUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$SetPhiroRGBLightBrickCallback;->getColorValueFromBrickField(Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)I

    move-result v2

    .line 163
    .local v2, "blue":I
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    return v3
.end method

.method public setValue(I)V
    .locals 4
    .param p1, "value"    # I

    .line 150
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$SetPhiroRGBLightBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_LIGHT_RED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 151
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$SetPhiroRGBLightBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_LIGHT_GREEN:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 152
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$SetPhiroRGBLightBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_LIGHT_BLUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 154
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$SetPhiroRGBLightBrickCallback;->view:Landroid/view/View;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromView(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    .line 155
    .local v0, "activity":Landroidx/appcompat/app/AppCompatActivity;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$SetPhiroRGBLightBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->notifyDataSetChanged(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 156
    return-void
.end method

.method public showFormulaEditor(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 145
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$SetPhiroRGBLightBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;

    invoke-static {v0, p1}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;->access$101(Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;Landroid/view/View;)V

    .line 146
    return-void
.end method
