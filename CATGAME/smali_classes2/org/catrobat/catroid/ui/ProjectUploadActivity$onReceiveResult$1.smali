.class final Lorg/catrobat/catroid/ui/ProjectUploadActivity$onReceiveResult$1;
.super Ljava/lang/Object;
.source "ProjectUploadActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/ProjectUploadActivity;->onReceiveResult(ILandroid/os/Bundle;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $projectId:Ljava/lang/String;

.field final synthetic this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/ProjectUploadActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$onReceiveResult$1;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$onReceiveResult$1;->$projectId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "it"    # Landroid/view/View;

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://share.catrob.at/pocketcode//project/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$onReceiveResult$1;->$projectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, "projectUrl":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$onReceiveResult$1;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    check-cast v2, Landroid/content/Context;

    const-class v3, Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 521
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$onReceiveResult$1;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->startActivity(Landroid/content/Intent;)V

    .line 523
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$onReceiveResult$1;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->access$loadBackup(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)V

    .line 524
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$onReceiveResult$1;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->access$getProjectManager$p(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$onReceiveResult$1;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    invoke-static {v3}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->access$getProject$p(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)Lorg/catrobat/catroid/content/Project;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/ProjectManager;->resetChangedFlag(Lorg/catrobat/catroid/content/Project;)V

    .line 525
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$onReceiveResult$1;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->finish()V

    .line 526
    .end local v0    # "projectUrl":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    return-void
.end method
