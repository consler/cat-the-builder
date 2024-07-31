.class public final Lorg/catrobat/catroid/content/bricks/StartListeningBrick;
.super Lorg/catrobat/catroid/content/bricks/UserVariableBrick;
.source "StartListeningBrick.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/StartListeningBrick$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0014J\u0008\u0010\u0011\u001a\u00020\u0010H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/bricks/StartListeningBrick;",
        "Lorg/catrobat/catroid/content/bricks/UserVariableBrick;",
        "userVariable",
        "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
        "(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V",
        "()V",
        "addActionToSequence",
        "",
        "sprite",
        "Lorg/catrobat/catroid/content/Sprite;",
        "sequence",
        "Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;",
        "addRequiredResources",
        "requiredResourcesSet",
        "Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;",
        "getSpinnerId",
        "",
        "getViewResource",
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
.field public static final Companion:Lorg/catrobat/catroid/content/bricks/StartListeningBrick$Companion;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/content/bricks/StartListeningBrick$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/bricks/StartListeningBrick$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/StartListeningBrick;->Companion:Lorg/catrobat/catroid/content/bricks/StartListeningBrick$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/UserVariableBrick;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V
    .locals 1
    .param p1, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    const-string v0, "userVariable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/StartListeningBrick;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/StartListeningBrick;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    const-string v0, "sprite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sequence"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/StartListeningBrick;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/ActionFactory;->createStartListeningAction(Lorg/catrobat/catroid/formulaeditor/UserVariable;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 47
    return-void
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 3
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const-string v0, "requiredResourcesSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    nop

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    .line 52
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 53
    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 51
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 50
    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->addAll(Ljava/util/Collection;)Z

    .line 56
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/UserVariableBrick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 57
    return-void
.end method

.method protected getSpinnerId()I
    .locals 1

    .line 41
    const v0, 0x7f0a0275

    return v0
.end method

.method public getViewResource()I
    .locals 1

    .line 43
    const v0, 0x7f0d00ed

    return v0
.end method
