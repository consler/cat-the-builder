.class public final Lorg/catrobat/catroid/content/bricks/StopSoundBrick;
.super Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.source "StopSoundBrick.kt"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;
.implements Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/content/bricks/BrickBaseType;",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener<",
        "Lorg/catrobat/catroid/common/SoundInfo;",
        ">;",
        "Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface<",
        "Lorg/catrobat/catroid/common/SoundInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0012\u0004\u0012\u00020\u00030\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0003H\u0016J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001aH\u0016J\u001a\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001a2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001aH\u0016J\u0018\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020!H\u0016R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lorg/catrobat/catroid/content/bricks/StopSoundBrick;",
        "Lorg/catrobat/catroid/content/bricks/BrickBaseType;",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;",
        "Lorg/catrobat/catroid/common/SoundInfo;",
        "Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;",
        "()V",
        "sound",
        "getSound",
        "()Lorg/catrobat/catroid/common/SoundInfo;",
        "setSound",
        "(Lorg/catrobat/catroid/common/SoundInfo;)V",
        "spinner",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;",
        "addActionToSequence",
        "",
        "sprite",
        "Lorg/catrobat/catroid/content/Sprite;",
        "sequence",
        "Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;",
        "addItem",
        "item",
        "getView",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "getViewResource",
        "",
        "onEditOptionSelected",
        "spinnerId",
        "onItemSelected",
        "onNewOptionSelected",
        "onStringOptionSelected",
        "string",
        "",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private sound:Lorg/catrobat/catroid/common/SoundInfo;

.field private transient spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<",
            "Lorg/catrobat/catroid/common/SoundInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

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

    .line 83
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/StopSoundBrick;->sound:Lorg/catrobat/catroid/common/SoundInfo;

    invoke-virtual {v0, p1, v1}, Lorg/catrobat/catroid/content/ActionFactory;->createStopSoundAction(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/common/SoundInfo;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 84
    return-void
.end method

.method public bridge synthetic addItem(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/catrobat/catroid/common/SoundInfo;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/bricks/StopSoundBrick;->addItem(Lorg/catrobat/catroid/common/SoundInfo;)V

    return-void
.end method

.method public addItem(Lorg/catrobat/catroid/common/SoundInfo;)V
    .locals 3
    .param p1, "item"    # Lorg/catrobat/catroid/common/SoundInfo;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/StopSoundBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    const-string v1, "spinner"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v2, p1

    check-cast v2, Lorg/catrobat/catroid/common/Nameable;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->add(Lorg/catrobat/catroid/common/Nameable;)V

    .line 73
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/StopSoundBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/common/Nameable;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Lorg/catrobat/catroid/common/Nameable;)V

    .line 74
    return-void
.end method

.method public final getSound()Lorg/catrobat/catroid/common/SoundInfo;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/StopSoundBrick;->sound:Lorg/catrobat/catroid/common/SoundInfo;

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/catrobat/catroid/common/Nameable;

    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;

    const v2, 0x7f1205aa

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;-><init>(Ljava/lang/String;)V

    check-cast v1, Lorg/catrobat/catroid/common/Nameable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 53
    .local v0, "items":Ljava/util/List;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    const-string v2, "ProjectManager.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    const-string v2, "ProjectManager.getInstance().currentSprite"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v1

    const-string v2, "ProjectManager.getInstan\u2026).currentSprite.soundList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    const v2, 0x7f0a027e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/StopSoundBrick;->view:Landroid/view/View;

    invoke-direct {v1, v2, v3, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;-><init>(Ljava/lang/Integer;Landroid/view/View;Ljava/util/List;)V

    .local v1, "$this$with":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;
    const/4 v2, 0x0

    .line 55
    .local v2, "$i$a$-with-StopSoundBrick$getView$1":I
    iput-object v1, p0, Lorg/catrobat/catroid/content/bricks/StopSoundBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    .line 56
    move-object v3, p0

    check-cast v3, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setOnItemSelectedListener(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;)V

    .line 57
    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/StopSoundBrick;->sound:Lorg/catrobat/catroid/common/SoundInfo;

    check-cast v3, Lorg/catrobat/catroid/common/Nameable;

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Lorg/catrobat/catroid/common/Nameable;)V

    .line 58
    nop

    .line 54
    .end local v1    # "$this$with":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;
    .end local v2    # "$i$a$-with-StopSoundBrick$getView$1":I
    nop

    .line 59
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/StopSoundBrick;->view:Landroid/view/View;

    const-string v2, "view"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public getViewResource()I
    .locals 1

    .line 47
    const v0, 0x7f0d00f2

    return v0
.end method

.method public onEditOptionSelected(I)V
    .locals 0
    .param p1, "spinnerId"    # I

    .line 69
    return-void
.end method

.method public bridge synthetic onEditOptionSelected(Ljava/lang/Integer;)V
    .locals 0

    .line 39
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/bricks/StopSoundBrick;->onEditOptionSelected(I)V

    return-void
.end method

.method public onItemSelected(ILorg/catrobat/catroid/common/SoundInfo;)V
    .locals 0
    .param p1, "spinnerId"    # I
    .param p2, "item"    # Lorg/catrobat/catroid/common/SoundInfo;

    .line 79
    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/StopSoundBrick;->sound:Lorg/catrobat/catroid/common/SoundInfo;

    .line 80
    return-void
.end method

.method public bridge synthetic onItemSelected(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 0

    .line 39
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/catrobat/catroid/common/SoundInfo;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/StopSoundBrick;->onItemSelected(ILorg/catrobat/catroid/common/SoundInfo;)V

    return-void
.end method

.method public onNewOptionSelected(I)V
    .locals 3
    .param p1, "spinnerId"    # I

    .line 63
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/StopSoundBrick;->view:Landroid/view/View;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromView(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    instance-of v1, v0, Lorg/catrobat/catroid/ui/SpriteActivity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lorg/catrobat/catroid/ui/SpriteActivity;

    if-eqz v0, :cond_1

    .local v0, "$this$apply":Lorg/catrobat/catroid/ui/SpriteActivity;
    const/4 v1, 0x0

    .line 64
    .local v1, "$i$a$-apply-StopSoundBrick$onNewOptionSelected$1":I
    move-object v2, p0

    check-cast v2, Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/ui/SpriteActivity;->registerOnNewSoundListener(Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;)V

    .line 65
    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->handleAddSoundButton()V

    .line 66
    nop

    .line 63
    .end local v0    # "$this$apply":Lorg/catrobat/catroid/ui/SpriteActivity;
    .end local v1    # "$i$a$-apply-StopSoundBrick$onNewOptionSelected$1":I
    nop

    .line 67
    :cond_1
    return-void
.end method

.method public bridge synthetic onNewOptionSelected(Ljava/lang/Integer;)V
    .locals 0

    .line 39
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/bricks/StopSoundBrick;->onNewOptionSelected(I)V

    return-void
.end method

.method public onStringOptionSelected(ILjava/lang/String;)V
    .locals 1
    .param p1, "spinnerId"    # I
    .param p2, "string"    # Ljava/lang/String;

    const-string v0, "string"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public bridge synthetic onStringOptionSelected(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/StopSoundBrick;->onStringOptionSelected(ILjava/lang/String;)V

    return-void
.end method

.method public final setSound(Lorg/catrobat/catroid/common/SoundInfo;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/common/SoundInfo;

    .line 42
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/StopSoundBrick;->sound:Lorg/catrobat/catroid/common/SoundInfo;

    return-void
.end method
