.class public Lorg/catrobat/catroid/ui/controller/ProjectUploadController;
.super Ljava/lang/Object;
.source "ProjectUploadController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/controller/ProjectUploadController$ProjectUploadInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProjectUploadController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProjectUploadController.kt\norg/catrobat/catroid/ui/controller/ProjectUploadController\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,74:1\n37#2,2:75\n*E\n*S KotlinDebug\n*F\n+ 1 ProjectUploadController.kt\norg/catrobat/catroid/ui/controller/ProjectUploadController\n*L\n47#1,2:75\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J \u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rH\u0002J(\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000c\u001a\u00020\rR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/controller/ProjectUploadController;",
        "",
        "projectUploadInterface",
        "Lorg/catrobat/catroid/ui/controller/ProjectUploadController$ProjectUploadInterface;",
        "(Lorg/catrobat/catroid/ui/controller/ProjectUploadController$ProjectUploadInterface;)V",
        "context",
        "Landroid/content/Context;",
        "createUploadIntent",
        "Landroid/content/Intent;",
        "projectName",
        "",
        "projectDescription",
        "project",
        "Lorg/catrobat/catroid/content/Project;",
        "startUpload",
        "",
        "projectNotesAndCredits",
        "ProjectUploadInterface",
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
.field private final context:Landroid/content/Context;

.field private final projectUploadInterface:Lorg/catrobat/catroid/ui/controller/ProjectUploadController$ProjectUploadInterface;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/ui/controller/ProjectUploadController$ProjectUploadInterface;)V
    .locals 1
    .param p1, "projectUploadInterface"    # Lorg/catrobat/catroid/ui/controller/ProjectUploadController$ProjectUploadInterface;

    const-string v0, "projectUploadInterface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/controller/ProjectUploadController;->projectUploadInterface:Lorg/catrobat/catroid/ui/controller/ProjectUploadController$ProjectUploadInterface;

    .line 40
    invoke-interface {p1}, Lorg/catrobat/catroid/ui/controller/ProjectUploadController$ProjectUploadInterface;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/controller/ProjectUploadController;->context:Landroid/content/Context;

    return-void
.end method

.method private final createUploadIntent(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/content/Project;)Landroid/content/Intent;
    .locals 7
    .param p1, "projectName"    # Ljava/lang/String;
    .param p2, "projectDescription"    # Ljava/lang/String;
    .param p3, "project"    # Lorg/catrobat/catroid/content/Project;

    .line 46
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/controller/ProjectUploadController;->context:Landroid/content/Context;

    const-class v2, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p3}, Lorg/catrobat/catroid/content/Project;->getSceneNames()Ljava/util/List;

    move-result-object v1

    const-string v2, "project.sceneNames"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Collection;

    .local v1, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 75
    .local v2, "$i$f$toTypedArray":I
    move-object v3, v1

    .line 76
    .local v3, "thisCollection$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 47
    .end local v1    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v2    # "$i$f$toTypedArray":I
    .end local v3    # "thisCollection$iv":Ljava/util/Collection;
    move-object v1, v4

    check-cast v1, [Ljava/lang/String;

    .line 48
    .local v1, "sceneNames":[Ljava/lang/String;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/controller/ProjectUploadController;->projectUploadInterface:Lorg/catrobat/catroid/ui/controller/ProjectUploadController$ProjectUploadInterface;

    invoke-interface {v2}, Lorg/catrobat/catroid/ui/controller/ProjectUploadController$ProjectUploadInterface;->getResultReceiverWrapper()Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapper;

    move-result-object v2

    .line 49
    .local v2, "resultReceiverWrapper":Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapper;
    move-object v3, v0

    .local v3, "$this$apply":Landroid/content/Intent;
    const/4 v4, 0x0

    .line 50
    .local v4, "$i$a$-apply-ProjectUploadController$createUploadIntent$1":I
    move-object v5, v2

    check-cast v5, Landroid/os/Parcelable;

    const-string v6, "resultReceiver"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 51
    const-string v5, "uploadName"

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v5, "projectDescription"

    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p3}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "project.directory"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "projectPath"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v5, "provider"

    const-string v6, "NATIVE"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v5, "sceneNames"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    nop

    .line 49
    .end local v3    # "$this$apply":Landroid/content/Intent;
    .end local v4    # "$i$a$-apply-ProjectUploadController$createUploadIntent$1":I
    return-object v0

    .line 76
    .local v1, "$this$toTypedArray$iv":Ljava/util/Collection;
    .local v2, "$i$f$toTypedArray":I
    .local v3, "thisCollection$iv":Ljava/util/Collection;
    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public final startUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/content/Project;)V
    .locals 2
    .param p1, "projectName"    # Ljava/lang/String;
    .param p2, "projectDescription"    # Ljava/lang/String;
    .param p3, "projectNotesAndCredits"    # Ljava/lang/String;
    .param p4, "project"    # Lorg/catrobat/catroid/content/Project;

    const-string v0, "projectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projectDescription"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "project"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p4, p2}, Lorg/catrobat/catroid/content/Project;->setDescription(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p4, p3}, Lorg/catrobat/catroid/content/Project;->setNotesAndCredits(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lorg/catrobat/catroid/ui/controller/ProjectUploadController;->context:Landroid/content/Context;

    invoke-virtual {p4, v0}, Lorg/catrobat/catroid/content/Project;->setDeviceData(Landroid/content/Context;)V

    .line 68
    invoke-virtual {p4}, Lorg/catrobat/catroid/content/Project;->setListeningLanguageTag()V

    .line 69
    iget-object v0, p0, Lorg/catrobat/catroid/ui/controller/ProjectUploadController;->context:Landroid/content/Context;

    invoke-static {p4, v0}, Lorg/catrobat/catroid/io/asynctask/ProjectSaverKt;->saveProjectSerial(Lorg/catrobat/catroid/content/Project;Landroid/content/Context;)Z

    .line 70
    invoke-direct {p0, p1, p2, p4}, Lorg/catrobat/catroid/ui/controller/ProjectUploadController;->createUploadIntent(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/content/Project;)Landroid/content/Intent;

    move-result-object v0

    .line 71
    .local v0, "uploadIntent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/controller/ProjectUploadController;->projectUploadInterface:Lorg/catrobat/catroid/ui/controller/ProjectUploadController$ProjectUploadInterface;

    invoke-interface {v1, v0}, Lorg/catrobat/catroid/ui/controller/ProjectUploadController$ProjectUploadInterface;->startUploadService(Landroid/content/Intent;)V

    .line 72
    return-void
.end method
