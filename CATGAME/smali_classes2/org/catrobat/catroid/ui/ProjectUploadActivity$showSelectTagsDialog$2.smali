.class final Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$2;
.super Ljava/lang/Object;
.source "ProjectUploadActivity.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/ProjectUploadActivity;->showSelectTagsDialog()V
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
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
.field final synthetic $checkedTags:Ljava/util/List;

.field final synthetic this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/ProjectUploadActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$2;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$2;->$checkedTags:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "$noName_0"    # Landroid/content/DialogInterface;
    .param p2, "$noName_1"    # I

    .line 416
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$2;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->access$getProject$p(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$2;->$checkedTags:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Project;->setTags(Ljava/util/List;)V

    .line 417
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$2;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->projectUploadController:Lorg/catrobat/catroid/ui/controller/ProjectUploadController;

    if-eqz v0, :cond_0

    .line 418
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$2;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->access$getProjectName$p(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$2;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->access$getProjectDescription$p(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)Ljava/lang/String;

    move-result-object v2

    .line 419
    iget-object v3, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$2;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    invoke-static {v3}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->access$getNotesAndCredits$p(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$2;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    invoke-static {v4}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->access$getProject$p(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)Lorg/catrobat/catroid/content/Project;

    move-result-object v4

    .line 417
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/catrobat/catroid/ui/controller/ProjectUploadController;->startUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/content/Project;)V

    .line 421
    :cond_0
    return-void
.end method
