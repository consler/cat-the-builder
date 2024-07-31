.class public final Lorg/catrobat/catroid/content/bricks/SetParticleColorBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "SetParticleColorBrick.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/SetParticleColorBrick$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u0005\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/bricks/SetParticleColorBrick;",
        "Lorg/catrobat/catroid/content/bricks/FormulaBrick;",
        "color",
        "",
        "(Ljava/lang/String;)V",
        "formula",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "()V",
        "addActionToSequence",
        "",
        "sprite",
        "Lorg/catrobat/catroid/content/Sprite;",
        "sequence",
        "Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;",
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
.field public static final Companion:Lorg/catrobat/catroid/content/bricks/SetParticleColorBrick$Companion;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/content/bricks/SetParticleColorBrick$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/bricks/SetParticleColorBrick$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/SetParticleColorBrick;->Companion:Lorg/catrobat/catroid/content/bricks/SetParticleColorBrick$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 54
    nop

    .line 55
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->COLOR:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    const v1, 0x7f0a0202

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/SetParticleColorBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/String;

    const-string v0, "color"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/SetParticleColorBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    const-string v0, "formula"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/SetParticleColorBrick;-><init>()V

    .line 35
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->COLOR:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/SetParticleColorBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    const-string v0, "sprite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sequence"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    nop

    .line 42
    nop

    .line 43
    nop

    .line 42
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    .line 44
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->COLOR:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/SetParticleColorBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    .line 45
    move-object v2, p2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 43
    invoke-virtual {v0, p1, v1, v2}, Lorg/catrobat/catroid/content/ActionFactory;->createSetParticleColorAction(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/formulaeditor/Formula;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    .line 41
    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 48
    return-void
.end method

.method public getViewResource()I
    .locals 1

    .line 38
    const v0, 0x7f0d00d9

    return v0
.end method
