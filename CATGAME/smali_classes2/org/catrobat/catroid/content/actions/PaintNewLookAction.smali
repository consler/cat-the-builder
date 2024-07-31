.class public final Lorg/catrobat/catroid/content/actions/PaintNewLookAction;
.super Lorg/catrobat/catroid/content/actions/PocketPaintAction;
.source "PaintNewLookAction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/actions/PaintNewLookAction$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\u0008\u0010\u000b\u001a\u00020\nH\u0002J\n\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u001a\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\rH\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/PaintNewLookAction;",
        "Lorg/catrobat/catroid/content/actions/PocketPaintAction;",
        "()V",
        "act",
        "",
        "delta",
        "",
        "addLookFromFile",
        "",
        "file",
        "Ljava/io/File;",
        "createEmptyImageFile",
        "getTargetIntent",
        "Landroid/content/Intent;",
        "onIntentResult",
        "resultCode",
        "",
        "data",
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
.field public static final Companion:Lorg/catrobat/catroid/content/actions/PaintNewLookAction$Companion;

.field private static final TAG:Ljava/lang/String; = "PaintNewLookAction"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/content/actions/PaintNewLookAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/actions/PaintNewLookAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/content/actions/PaintNewLookAction;->Companion:Lorg/catrobat/catroid/content/actions/PaintNewLookAction$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/PocketPaintAction;-><init>()V

    return-void
.end method

.method private final createEmptyImageFile()Ljava/io/File;
    .locals 5

    .line 69
    const-string v0, "image.png"

    .line 70
    .local v0, "pocketPaintImageFileName":Ljava/lang/String;
    sget-object v1, Lorg/catrobat/catroid/common/Constants;->POCKET_PAINT_CACHE_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 71
    sget-object v1, Lorg/catrobat/catroid/common/Constants;->POCKET_PAINT_CACHE_DIR:Ljava/io/File;

    const-string v2, "Constants.POCKET_PAINT_CACHE_DIR"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const-string v1, "PaintNewLookAction"

    const-string v2, "Failed to create directory!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    const-string v2, "ProjectManager.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    .line 75
    .local v1, "currentProject":Lorg/catrobat/catroid/content/Project;
    nop

    .line 76
    const-string v2, "currentProject"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v2

    iget v2, v2, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenWidth:I

    .line 77
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v3

    iget v3, v3, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 75
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 79
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    nop

    .line 80
    new-instance v3, Ljava/io/File;

    sget-object v4, Lorg/catrobat/catroid/common/Constants;->POCKET_PAINT_CACHE_DIR:Ljava/io/File;

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    invoke-static {v2, v3}, Lorg/catrobat/catroid/io/StorageOperations;->compressBitmapToPng(Landroid/graphics/Bitmap;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    const-string v4, "StorageOperations.compre\u2026ocketPaintImageFileName))"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public act(F)Z
    .locals 2
    .param p1, "delta"    # F

    .line 48
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/PaintNewLookAction;->getQuestionAsked()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/content/actions/LookRequester;->INSTANCE:Lorg/catrobat/catroid/content/actions/LookRequester;

    move-object v1, p0

    check-cast v1, Lorg/catrobat/catroid/content/actions/PocketPaintAction;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/LookRequester;->requestNewLook(Lorg/catrobat/catroid/content/actions/PocketPaintAction;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/PaintNewLookAction;->getNextLookAction()Lorg/catrobat/catroid/content/actions/SetNextLookAction;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetNextLookAction;->setChange(I)V

    .line 50
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/PaintNewLookAction;->setQuestionAsked(Z)V

    .line 52
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/PaintNewLookAction;->getResponseReceived()Z

    move-result v0

    return v0
.end method

.method public final addLookFromFile(Ljava/io/File;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/PaintNewLookAction;->getScope()Lorg/catrobat/catroid/content/Scope;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 100
    .local v0, "sprite":Lorg/catrobat/catroid/content/Sprite;
    iget-object v1, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    if-eqz v1, :cond_3

    .line 101
    .local v1, "look":Lorg/catrobat/catroid/content/Look;
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/PaintNewLookAction;->getFormula()Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 102
    .local v2, "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/PaintNewLookAction;->getScope()Lorg/catrobat/catroid/content/Scope;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretObject(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "lookDataName":Ljava/lang/String;
    new-instance v4, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    invoke-direct {v4}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;-><init>()V

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UniqueNameProvider().get\u2026ataName, sprite.lookList)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v4

    .line 104
    new-instance v4, Lorg/catrobat/catroid/common/LookData;

    invoke-direct {v4, v3, p1}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 105
    .local v4, "lookData":Lorg/catrobat/catroid/common/LookData;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getLookListIndexBeforeLookRequest()I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_0

    .line 106
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getLookListIndexBeforeLookRequest()I

    move-result v5

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v5

    iget-object v6, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    const-string v7, "sprite.look"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 105
    :goto_0
    nop

    .line 110
    .local v5, "lookDataIndex":I
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    invoke-interface {v6, v7, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 111
    invoke-virtual {v4}, Lorg/catrobat/catroid/common/LookData;->getCollisionInformation()Lorg/catrobat/catroid/sensing/CollisionInformation;

    move-result-object v6

    invoke-virtual {v6}, Lorg/catrobat/catroid/sensing/CollisionInformation;->calculate()V

    .line 112
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/PaintNewLookAction;->getNextLookAction()Lorg/catrobat/catroid/content/actions/SetNextLookAction;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/catrobat/catroid/content/actions/SetNextLookAction;->setChange(I)V

    .line 113
    :cond_1
    return-void

    .line 101
    .end local v2    # "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    .end local v3    # "lookDataName":Ljava/lang/String;
    .end local v4    # "lookData":Lorg/catrobat/catroid/common/LookData;
    .end local v5    # "lookDataIndex":I
    :cond_2
    return-void

    .line 100
    .end local v1    # "look":Lorg/catrobat/catroid/content/Look;
    :cond_3
    return-void

    .line 99
    .end local v0    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_4
    return-void
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 6

    .line 56
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->activeStageActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/stage/StageActivity;

    if-eqz v0, :cond_1

    .local v0, "stageActivity":Lorg/catrobat/catroid/stage/StageActivity;
    const/4 v1, 0x0

    .line 57
    .local v1, "$i$a$-let-PaintNewLookAction$getTargetIntent$1":I
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    .line 58
    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    .line 57
    const-string v5, "org.catrobat.paintroid.MainActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Intent(\"android.intent.a\u2026NT_INTENT_ACTIVITY_NAME))"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v3, "bundle":Landroid/os/Bundle;
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/PaintNewLookAction;->createEmptyImageFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "org.catrobat.extra.PAINTROID_PICTURE_PATH"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 62
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    sget-object v4, Lorg/catrobat/catroid/stage/StageActivity;->activeStageActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/stage/StageActivity;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/catrobat/catroid/stage/StageActivity;->onPause()V

    .line 64
    :cond_0
    nop

    .line 56
    .end local v0    # "stageActivity":Lorg/catrobat/catroid/stage/StageActivity;
    .end local v1    # "$i$a$-let-PaintNewLookAction$getTargetIntent$1":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public onIntentResult(ILandroid/content/Intent;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .line 84
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 85
    sget-object v0, Lorg/catrobat/catroid/content/actions/LookRequester;->INSTANCE:Lorg/catrobat/catroid/content/actions/LookRequester;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/actions/LookRequester;->getFile()Ljava/io/File;

    move-result-object v0

    .line 86
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/PaintNewLookAction;->addLookFromFile(Ljava/io/File;)V

    .line 88
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/PaintNewLookAction;->getXstreamSerializer()Lorg/catrobat/catroid/io/XstreamSerializer;

    move-result-object v1

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    const-string v3, "ProjectManager.getInstance()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/io/XstreamSerializer;->saveProject(Lorg/catrobat/catroid/content/Project;)Z

    goto :goto_0

    .line 91
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/content/actions/LookRequester;->INSTANCE:Lorg/catrobat/catroid/content/actions/LookRequester;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/LookRequester;->setAnyAsked(Z)V

    .line 92
    :cond_1
    :goto_0
    nop

    .line 93
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->activeStageActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/stage/StageActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageActivity;->onResume()V

    .line 94
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/PaintNewLookAction;->setResponseReceived(Z)V

    .line 95
    return-void
.end method
