.class final Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$3;
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
        "dialog",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "which",
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
.field final synthetic this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$3;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 423
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$3;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lorg/catrobat/catroid/utils/Utils;->invalidateLoginTokenIfUserRestricted(Landroid/content/Context;)V

    .line 424
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$3;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->setShowProgressBar(Z)V

    .line 425
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$3;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->access$setNextButtonEnabled(Lorg/catrobat/catroid/ui/ProjectUploadActivity;Z)V

    .line 426
    return-void
.end method
