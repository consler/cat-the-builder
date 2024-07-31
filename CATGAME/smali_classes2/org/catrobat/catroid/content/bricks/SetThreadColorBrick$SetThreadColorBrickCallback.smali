.class final Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick$SetThreadColorBrickCallback;
.super Ljava/lang/Object;
.source "SetThreadColorBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SetThreadColorBrickCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;

.field private final view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;

    .line 84
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick$SetThreadColorBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick$SetThreadColorBrickCallback;->view:Landroid/view/View;

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;Landroid/view/View;Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick$1;

    .line 81
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick$SetThreadColorBrickCallback;-><init>(Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;Landroid/view/View;)V

    return-void
.end method

.method private convertToHexString(I)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # I

    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "hexValue":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    return-object v0
.end method

.method private getColorValueFromBrickField(Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)I
    .locals 3
    .param p1, "brickField"    # Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 107
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick$SetThreadColorBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v0

    .line 109
    .local v0, "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretString(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 111
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 103
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->THREAD_COLOR:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick$SetThreadColorBrickCallback;->getColorValueFromBrickField(Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)I

    move-result v0

    return v0
.end method

.method public setValue(I)V
    .locals 4
    .param p1, "value"    # I

    .line 95
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick$SetThreadColorBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->THREAD_COLOR:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick$SetThreadColorBrickCallback;->convertToHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 97
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick$SetThreadColorBrickCallback;->view:Landroid/view/View;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromView(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    .line 98
    .local v0, "activity":Landroidx/appcompat/app/AppCompatActivity;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick$SetThreadColorBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;->notifyDataSetChanged(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 99
    return-void
.end method

.method public showFormulaEditor(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 90
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick$SetThreadColorBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;

    invoke-static {v0, p1}, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;->access$100(Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;Landroid/view/View;)V

    .line 91
    return-void
.end method
