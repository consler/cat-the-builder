.class final Lorg/catrobat/catroid/transfers/project/ProjectUpload$start$1;
.super Ljava/lang/Object;
.source "ProjectUpload.kt"

# interfaces
.implements Lorg/catrobat/catroid/web/ServerCalls$UploadSuccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/transfers/project/ProjectUpload;->start(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0006\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "projectId",
        "",
        "kotlin.jvm.PlatformType",
        "successUsername",
        "successToken",
        "onSuccess"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $projectArchive:Ljava/io/File;

.field final synthetic $successCallback:Lkotlin/jvm/functions/Function1;

.field final synthetic this$0:Lorg/catrobat/catroid/transfers/project/ProjectUpload;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/transfers/project/ProjectUpload;Lkotlin/jvm/functions/Function1;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload$start$1;->this$0:Lorg/catrobat/catroid/transfers/project/ProjectUpload;

    iput-object p2, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload$start$1;->$successCallback:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload$start$1;->$projectArchive:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "projectId"    # Ljava/lang/String;
    .param p2, "successUsername"    # Ljava/lang/String;
    .param p3, "successToken"    # Ljava/lang/String;

    .line 74
    nop

    .line 77
    nop

    .line 74
    nop

    .line 76
    nop

    .line 74
    nop

    .line 75
    nop

    .line 74
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload$start$1;->this$0:Lorg/catrobat/catroid/transfers/project/ProjectUpload;

    invoke-static {v0}, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->access$getSharedPreferences$p(Lorg/catrobat/catroid/transfers/project/ProjectUpload;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    const-string v1, "token"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    const-string v1, "username"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 79
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload$start$1;->$successCallback:Lkotlin/jvm/functions/Function1;

    const-string v1, "projectId"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload$start$1;->$projectArchive:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 81
    return-void
.end method
