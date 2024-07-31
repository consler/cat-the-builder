.class public final Lorg/catrobat/catroid/content/bricks/SetCameraFocusPointBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "SetCameraFocusPointBrick.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/SetCameraFocusPointBrick$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/bricks/SetCameraFocusPointBrick;",
        "Lorg/catrobat/catroid/content/bricks/FormulaBrick;",
        "()V",
        "addActionToSequence",
        "",
        "sprite",
        "Lorg/catrobat/catroid/content/Sprite;",
        "sequence",
        "Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;",
        "getDefaultBrickField",
        "Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;",
        "getViewResource",
        "",
        "Companion",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/catroid/content/bricks/SetCameraFocusPointBrick$Companion;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/content/bricks/SetCameraFocusPointBrick$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/bricks/SetCameraFocusPointBrick$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/SetCameraFocusPointBrick;->Companion:Lorg/catrobat/catroid/content/bricks/SetCameraFocusPointBrick$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 37
    nop

    .line 38
    nop

    .line 39
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->HORIZONTAL_FLEXIBILITY:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    .line 40
    nop

    .line 38
    const v1, 0x7f0a01fa

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/SetCameraFocusPointBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 42
    nop

    .line 43
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->VERTICAL_FLEXIBILITY:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    .line 44
    nop

    .line 42
    const v1, 0x7f0a01ff

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/SetCameraFocusPointBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 46
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 4
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    const-string v0, "sprite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sequence"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    nop

    .line 54
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    .line 55
    move-object v1, p2

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 56
    sget-object v2, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->HORIZONTAL_FLEXIBILITY:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/content/bricks/SetCameraFocusPointBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v2

    .line 57
    sget-object v3, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->VERTICAL_FLEXIBILITY:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v3, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/content/bricks/SetCameraFocusPointBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v3

    .line 54
    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/catrobat/catroid/content/ActionFactory;->createSetCameraFocusPointAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    .line 53
    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 60
    return-void
.end method

.method public getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .locals 1

    .line 48
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->HORIZONTAL_FLEXIBILITY:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 50
    const v0, 0x7f0d00d2

    return v0
.end method
