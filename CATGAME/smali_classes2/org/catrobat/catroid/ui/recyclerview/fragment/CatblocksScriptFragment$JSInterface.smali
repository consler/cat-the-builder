.class public final Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;
.super Ljava/lang/Object;
.source "CatblocksScriptFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "JSInterface"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\n\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0007J\u0008\u0010\u0007\u001a\u00020\u0004H\u0007J\u0008\u0010\u0008\u001a\u00020\u0004H\u0007J\n\u0010\t\u001a\u0004\u0018\u00010\u0004H\u0007J\n\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0007J\u0008\u0010\u000b\u001a\u00020\u000cH\u0007J+\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0012H\u0007\u00a2\u0006\u0002\u0010\u0013J\u001b\u0010\u0014\u001a\u00020\u00042\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0012H\u0007\u00a2\u0006\u0002\u0010\u0015J\u001b\u0010\u0016\u001a\u00020\u00172\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0012H\u0007\u00a2\u0006\u0002\u0010\u0019J\u0008\u0010\u001a\u001a\u00020\u0004H\u0007J\u0010\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0004H\u0007J \u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0004H\u0007\u00a8\u0006!"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;",
        "",
        "(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)V",
        "duplicateBrick",
        "",
        "brickStrIdToClone",
        "getBrickIDToFocus",
        "getCurrentLanguage",
        "getCurrentProject",
        "getSceneNameToDisplay",
        "getSpriteNameToDisplay",
        "isRTL",
        "",
        "moveBricks",
        "newParentStrId",
        "parentSubStackIndex",
        "",
        "brickStrIdsToMove",
        "",
        "(Ljava/lang/String;I[Ljava/lang/String;)Z",
        "moveBricksToEmptyScriptBrick",
        "([Ljava/lang/String;)Ljava/lang/String;",
        "removeBricks",
        "",
        "brickStrIdsToRemove",
        "([Ljava/lang/String;)V",
        "removeEmptyScriptBricks",
        "switchTo1D",
        "strClickedBrickId",
        "updateScriptPosition",
        "strScriptId",
        "x",
        "y",
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
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final duplicateBrick(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "brickStrIdToClone"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "brickStrIdToClone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 340
    .local v0, "brickIdToClone":Ljava/util/UUID;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->access$getProjectManager$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/Sprite;->findBrickInSprite(Ljava/util/UUID;)Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 343
    .local v1, "foundBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    instance-of v2, v1, Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    const-string v3, "projectManager.currentSprite"

    if-eqz v2, :cond_1

    .line 344
    move-object v2, v1

    check-cast v2, Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/ScriptBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Script;->clone()Lorg/catrobat/catroid/content/Script;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "foundBrick.script?.clone() ?: return null"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    .local v2, "clone":Lorg/catrobat/catroid/content/Script;
    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-static {v4}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->access$getProjectManager$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)Lorg/catrobat/catroid/ProjectManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Script;->getScriptId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 344
    .end local v2    # "clone":Lorg/catrobat/catroid/content/Script;
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 348
    :cond_1
    invoke-interface {v1}, Lorg/catrobat/catroid/content/bricks/Brick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v2

    const-string v4, "foundBrick.clone()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    .local v2, "clone":Lorg/catrobat/catroid/content/bricks/Brick;
    new-instance v4, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;

    invoke-direct {v4}, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;-><init>()V

    .line 350
    .local v4, "emptyBrick":Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;
    invoke-virtual {v4}, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v5

    const-string v6, "emptyBrick.script"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Script;->getBrickList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v5, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-static {v5}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->access$getProjectManager$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)Lorg/catrobat/catroid/ProjectManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-virtual {v4}, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Script;->getScriptId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 341
    .end local v1    # "foundBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v2    # "clone":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v4    # "emptyBrick":Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;
    :cond_2
    const-string v1, ""

    return-object v1
.end method

.method public final getBrickIDToFocus()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 207
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->access$getBrickAtTopID$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->access$getBrickAtTopID$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 210
    :cond_0
    nop

    .line 211
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->access$getProjectManager$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->access$getProjectManager$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    const-string v2, "projectManager.currentSprite"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v0

    const-string v3, "projectManager.currentSprite.scriptList"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->any(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->access$getProjectManager$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "projectManager.currentSprite.scriptList[0]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/catrobat/catroid/content/Script;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Script;->getScriptId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 214
    :cond_2
    nop

    .line 215
    return-object v1
.end method

.method public final getCurrentLanguage()Ljava/lang/String;
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 190
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "Locale.getDefault().toString()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "_"

    const-string v3, "-"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentProject()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 183
    nop

    .line 184
    nop

    .line 183
    invoke-static {}, Lorg/catrobat/catroid/io/XstreamSerializer;->getInstance()Lorg/catrobat/catroid/io/XstreamSerializer;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->access$getProjectManager$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/io/XstreamSerializer;->getXmlAsStringFromProject(Lorg/catrobat/catroid/content/Project;)Ljava/lang/String;

    move-result-object v0

    .line 183
    nop

    .line 185
    .local v0, "projectXml":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getSceneNameToDisplay()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 200
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->access$getProjectManager$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getSpriteNameToDisplay()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 203
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->access$getProjectManager$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final isRTL()Z
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 194
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "Locale.getDefault()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    .line 195
    .local v0, "directionality":B
    nop

    .line 196
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    .line 195
    :cond_1
    return v1
.end method

.method public final moveBricks(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 7
    .param p1, "newParentStrId"    # Ljava/lang/String;
    .param p2, "parentSubStackIndex"    # I
    .param p3, "brickStrIdsToMove"    # [Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "newParentStrId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brickStrIdsToMove"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 269
    .local v0, "brickIdsToMove":Ljava/util/List;
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p3, v3

    .line 270
    .local v4, "strId":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    const-string v6, "UUID.fromString(strId)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    nop

    .end local v4    # "strId":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 273
    :cond_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    .line 275
    .local v1, "newParentId":Ljava/util/UUID;
    const/4 v3, 0x0

    check-cast v3, Ljava/util/List;

    .line 276
    .local v3, "bricksToMove":Ljava/util/List;
    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-static {v4}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->access$getProjectManager$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)Lorg/catrobat/catroid/ProjectManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v4

    const-string v5, "projectManager.currentSprite"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/content/Script;

    .line 277
    .local v6, "script":Lorg/catrobat/catroid/content/Script;
    invoke-virtual {v6, v0}, Lorg/catrobat/catroid/content/Script;->removeBricksFromScript(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 278
    if-eqz v3, :cond_1

    .line 279
    goto :goto_2

    .line 276
    .end local v6    # "script":Lorg/catrobat/catroid/content/Script;
    :cond_1
    goto :goto_1

    .line 283
    :cond_2
    :goto_2
    if-nez v3, :cond_3

    .line 284
    return v2

    .line 287
    :cond_3
    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-static {v4}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->access$getProjectManager$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)Lorg/catrobat/catroid/ProjectManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/content/Script;

    .line 288
    .local v5, "script":Lorg/catrobat/catroid/content/Script;
    invoke-virtual {v5, v1, p2, v3}, Lorg/catrobat/catroid/content/Script;->insertBrickAfter(Ljava/util/UUID;ILjava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 289
    const/4 v2, 0x1

    return v2

    .line 287
    .end local v5    # "script":Lorg/catrobat/catroid/content/Script;
    :cond_4
    goto :goto_3

    .line 293
    :cond_5
    return v2
.end method

.method public final moveBricksToEmptyScriptBrick([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "brickStrIdsToMove"    # [Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "brickStrIdsToMove"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    new-instance v0, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;-><init>()V

    .line 242
    .local v0, "emptyBrick":Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 243
    .local v1, "brickIdsToMove":Ljava/util/List;
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 244
    .local v4, "strId":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    const-string v6, "UUID.fromString(strId)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    nop

    .end local v4    # "strId":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 247
    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->access$getProjectManager$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    const-string v3, "projectManager.currentSprite"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "emptyBrick.script"

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/content/Script;

    .line 249
    .local v4, "script":Lorg/catrobat/catroid/content/Script;
    nop

    .line 250
    nop

    .line 249
    nop

    .line 250
    invoke-virtual {v4, v1}, Lorg/catrobat/catroid/content/Script;->removeBricksFromScript(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 249
    nop

    .line 252
    .local v6, "foundBricks":Ljava/util/List;
    if-eqz v6, :cond_1

    .line 253
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Script;->getBrickList()Ljava/util/List;

    move-result-object v2

    move-object v7, v6

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v2, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 254
    goto :goto_2

    .line 247
    .end local v4    # "script":Lorg/catrobat/catroid/content/Script;
    .end local v6    # "foundBricks":Ljava/util/List;
    :cond_1
    goto :goto_1

    .line 258
    :cond_2
    :goto_2
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->access$getProjectManager$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Script;->getScriptId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "emptyBrick.script.scriptId.toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public final removeBricks([Ljava/lang/String;)V
    .locals 6
    .param p1, "brickStrIdsToRemove"    # [Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "brickStrIdsToRemove"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v0, "brickIdsToRemove":Ljava/util/ArrayList;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 318
    .local v3, "strId":Ljava/lang/String;
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    nop

    .end local v3    # "strId":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    :cond_0
    const/4 v1, 0x0

    .line 322
    .local v1, "done":Z
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->access$getProjectManager$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    const-string v3, "projectManager.currentSprite"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/content/Script;

    .line 323
    .local v4, "script":Lorg/catrobat/catroid/content/Script;
    const-string v5, "script"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Script;->getScriptId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 324
    iget-object v5, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-static {v5}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->access$getProjectManager$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)Lorg/catrobat/catroid/ProjectManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 325
    const/4 v1, 0x1

    goto :goto_2

    .line 326
    :cond_1
    move-object v5, v0

    check-cast v5, Ljava/util/List;

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/content/Script;->removeBricksFromScript(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 327
    const/4 v1, 0x1

    .line 328
    :cond_2
    :goto_2
    nop

    .line 330
    if-eqz v1, :cond_3

    .line 331
    goto :goto_3

    .line 322
    .end local v4    # "script":Lorg/catrobat/catroid/content/Script;
    :cond_3
    goto :goto_1

    .line 334
    :cond_4
    :goto_3
    return-void
.end method

.method public final removeEmptyScriptBricks()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 298
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->access$getProjectManager$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->removeAllEmptyScriptBricks()Ljava/util/List;

    move-result-object v0

    .line 299
    .local v0, "removed":Ljava/util/List;
    new-instance v1, Lorg/json/JSONArray;

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JSONArray(removed).toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final switchTo1D(Ljava/lang/String;)V
    .locals 5
    .param p1, "strClickedBrickId"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "strClickedBrickId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 306
    .local v0, "brickId":Ljava/util/UUID;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->access$getProjectManager$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/Sprite;->findBrickInSprite(Ljava/util/UUID;)Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v1

    .line 308
    .local v1, "foundBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    if-eqz v1, :cond_0

    .line 309
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$SwitchTo1DHelper;

    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-direct {v2, v3, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$SwitchTo1DHelper;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 310
    .local v2, "switchTo1DHelper":Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$SwitchTo1DHelper;
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-virtual {v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v4, v2

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 312
    .end local v2    # "switchTo1DHelper":Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$SwitchTo1DHelper;
    :cond_0
    return-void
.end method

.method public final updateScriptPosition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "strScriptId"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/String;
    .param p3, "y"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "strScriptId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "x"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "y"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->access$getProjectManager$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    if-nez v0, :cond_0

    .line 222
    return-void

    .line 225
    :cond_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 226
    .local v0, "scriptId":Ljava/util/UUID;
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 227
    .local v1, "posX":F
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 229
    .local v2, "posY":F
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$JSInterface;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-static {v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->access$getProjectManager$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;)Lorg/catrobat/catroid/ProjectManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v3

    const-string v4, "projectManager.currentSprite"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/content/Script;

    .line 230
    .local v4, "script":Lorg/catrobat/catroid/content/Script;
    const-string v5, "script"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Script;->getScriptId()Ljava/util/UUID;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 231
    invoke-virtual {v4, v1}, Lorg/catrobat/catroid/content/Script;->setPosX(F)V

    .line 232
    invoke-virtual {v4, v2}, Lorg/catrobat/catroid/content/Script;->setPosY(F)V

    .line 233
    goto :goto_1

    .line 229
    .end local v4    # "script":Lorg/catrobat/catroid/content/Script;
    :cond_1
    goto :goto_0

    .line 236
    :cond_2
    :goto_1
    return-void
.end method
