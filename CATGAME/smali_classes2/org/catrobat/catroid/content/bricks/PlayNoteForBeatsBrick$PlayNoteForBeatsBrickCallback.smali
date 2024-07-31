.class final Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick$PlayNoteForBeatsBrickCallback;
.super Ljava/lang/Object;
.source "PlayNoteForBeatsBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PlayNoteForBeatsBrickCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;

.field private final view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;

    .line 94
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick$PlayNoteForBeatsBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick$PlayNoteForBeatsBrickCallback;->view:Landroid/view/View;

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;Landroid/view/View;Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick$1;

    .line 91
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick$PlayNoteForBeatsBrickCallback;-><init>(Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 3

    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "note":I
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick$PlayNoteForBeatsBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;

    sget-object v2, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->NOTE_TO_PLAY:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    .line 115
    .local v1, "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 118
    .end local v1    # "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    nop

    .line 119
    return v0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    const/4 v2, 0x0

    return v2
.end method

.method public setValue(I)V
    .locals 4
    .param p1, "value"    # I

    .line 105
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick$PlayNoteForBeatsBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->NOTE_TO_PLAY:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 106
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick$PlayNoteForBeatsBrickCallback;->view:Landroid/view/View;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromView(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    .line 107
    .local v0, "activity":Landroidx/appcompat/app/AppCompatActivity;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick$PlayNoteForBeatsBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;->notifyDataSetChanged(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 108
    return-void
.end method

.method public showFormulaEditor(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 100
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick$PlayNoteForBeatsBrickCallback;->this$0:Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;

    invoke-static {v0, p1}, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;->access$100(Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;Landroid/view/View;)V

    .line 101
    return-void
.end method
