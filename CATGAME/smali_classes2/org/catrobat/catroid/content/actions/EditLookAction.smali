.class public final Lorg/catrobat/catroid/content/actions/EditLookAction;
.super Lorg/catrobat/catroid/content/actions/PocketPaintAction;
.source "EditLookAction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/actions/EditLookAction$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u001a\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008H\u0016J\u0008\u0010\u000e\u001a\u00020\nH\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/EditLookAction;",
        "Lorg/catrobat/catroid/content/actions/PocketPaintAction;",
        "()V",
        "act",
        "",
        "delta",
        "",
        "getTargetIntent",
        "Landroid/content/Intent;",
        "onIntentResult",
        "",
        "resultCode",
        "",
        "data",
        "setLookData",
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
.field public static final Companion:Lorg/catrobat/catroid/content/actions/EditLookAction$Companion;

.field private static final TAG:Ljava/lang/String; = "EditLookAction"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/content/actions/EditLookAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/actions/EditLookAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/content/actions/EditLookAction;->Companion:Lorg/catrobat/catroid/content/actions/EditLookAction$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/PocketPaintAction;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 2
    .param p1, "delta"    # F

    .line 45
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/EditLookAction;->getQuestionAsked()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/content/actions/LookRequester;->INSTANCE:Lorg/catrobat/catroid/content/actions/LookRequester;

    move-object v1, p0

    check-cast v1, Lorg/catrobat/catroid/content/actions/PocketPaintAction;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/LookRequester;->requestNewLook(Lorg/catrobat/catroid/content/actions/PocketPaintAction;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/EditLookAction;->getNextLookAction()Lorg/catrobat/catroid/content/actions/SetNextLookAction;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetNextLookAction;->setChange(I)V

    .line 47
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/EditLookAction;->setQuestionAsked(Z)V

    .line 49
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/EditLookAction;->getResponseReceived()Z

    move-result v0

    return v0
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 7

    .line 53
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/EditLookAction;->getScope()Lorg/catrobat/catroid/content/Scope;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/EditLookAction;->getScope()Lorg/catrobat/catroid/content/Scope;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 57
    .local v0, "lookAbsolutePath":Ljava/lang/String;
    sget-object v2, Lorg/catrobat/catroid/stage/StageActivity;->activeStageActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/stage/StageActivity;

    if-eqz v2, :cond_1

    move-object v1, v2

    .local v1, "stageActivity":Lorg/catrobat/catroid/stage/StageActivity;
    const/4 v2, 0x0

    .line 58
    .local v2, "$i$a$-let-EditLookAction$getTargetIntent$1":I
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/content/ComponentName;

    .line 59
    move-object v5, v1

    check-cast v5, Landroid/content/Context;

    .line 58
    const-string v6, "org.catrobat.paintroid.MainActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "Intent(\"android.intent.a\u2026NT_INTENT_ACTIVITY_NAME))"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .local v3, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v5, "org.catrobat.extra.PAINTROID_PICTURE_PATH"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 63
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {v1}, Lorg/catrobat/catroid/stage/StageActivity;->onPause()V

    .line 65
    nop

    .line 57
    .end local v1    # "stageActivity":Lorg/catrobat/catroid/stage/StageActivity;
    .end local v2    # "$i$a$-let-EditLookAction$getTargetIntent$1":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "bundle":Landroid/os/Bundle;
    move-object v1, v3

    :cond_1
    return-object v1

    .line 56
    .end local v0    # "lookAbsolutePath":Ljava/lang/String;
    :cond_2
    return-object v1

    .line 54
    :cond_3
    :goto_0
    return-object v1
.end method

.method public onIntentResult(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .line 70
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->activeStageActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/stage/StageActivity;

    .line 71
    .local v0, "stageActivity":Lorg/catrobat/catroid/stage/StageActivity;
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/EditLookAction;->setLookData()V

    .line 74
    :cond_0
    sget-object v1, Lorg/catrobat/catroid/content/actions/LookRequester;->INSTANCE:Lorg/catrobat/catroid/content/actions/LookRequester;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/actions/LookRequester;->setAnyAsked(Z)V

    .line 75
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/actions/EditLookAction;->setResponseReceived(Z)V

    .line 76
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageActivity;->onResume()V

    .line 77
    :cond_1
    return-void
.end method

.method public final setLookData()V
    .locals 9

    .line 81
    const-string v0, "sprite.look"

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/EditLookAction;->getScope()Lorg/catrobat/catroid/content/Scope;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 82
    .local v1, "sprite":Lorg/catrobat/catroid/content/Sprite;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 83
    .local v2, "lookData":Lorg/catrobat/catroid/common/LookData;
    invoke-virtual {v2}, Lorg/catrobat/catroid/common/LookData;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 84
    .local v3, "lookDataName":Ljava/lang/String;
    iget-object v4, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 86
    .local v4, "lookDataOldFile":Ljava/io/File;
    nop

    .line 87
    :try_start_0
    invoke-static {v4}, Lorg/catrobat/catroid/io/StorageOperations;->duplicateFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 88
    .local v5, "lookDataNewFile":Ljava/io/File;
    new-instance v6, Lorg/catrobat/catroid/common/LookData;

    invoke-direct {v6, v3, v5}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 89
    .local v6, "lookData":Lorg/catrobat/catroid/common/LookData;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v7

    iget-object v8, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 90
    .local v7, "lookDataIndex":I
    iget-object v8, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Lorg/catrobat/catroid/content/Look;->setLookListIndexBeforeLookRequest(I)V

    .line 91
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 92
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 93
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 94
    invoke-virtual {v6}, Lorg/catrobat/catroid/common/LookData;->getCollisionInformation()Lorg/catrobat/catroid/sensing/CollisionInformation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/sensing/CollisionInformation;->calculate()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "lookDataNewFile":Ljava/io/File;
    .end local v6    # "lookData":Lorg/catrobat/catroid/common/LookData;
    .end local v7    # "lookDataIndex":I
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "EditLookAction"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 98
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/EditLookAction;->getXstreamSerializer()Lorg/catrobat/catroid/io/XstreamSerializer;

    move-result-object v0

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v5

    const-string v6, "ProjectManager.getInstance()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/catrobat/catroid/io/XstreamSerializer;->saveProject(Lorg/catrobat/catroid/content/Project;)Z

    .line 99
    return-void

    .line 84
    .end local v4    # "lookDataOldFile":Ljava/io/File;
    :cond_0
    return-void

    .line 83
    .end local v3    # "lookDataName":Ljava/lang/String;
    :cond_1
    return-void

    .line 82
    .end local v2    # "lookData":Lorg/catrobat/catroid/common/LookData;
    :cond_2
    return-void

    .line 81
    .end local v1    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_3
    return-void
.end method
