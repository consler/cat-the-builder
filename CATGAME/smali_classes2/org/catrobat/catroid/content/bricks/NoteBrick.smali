.class public Lorg/catrobat/catroid/content/bricks/NoteBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "NoteBrick.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 37
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->NOTE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0177

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/NoteBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "note"    # Ljava/lang/String;

    .line 41
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/NoteBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 45
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/NoteBrick;-><init>()V

    .line 46
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->NOTE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/NoteBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 47
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 56
    return-void
.end method

.method public getViewResource()I
    .locals 1

    .line 51
    const v0, 0x7f0d009b

    return v0
.end method
