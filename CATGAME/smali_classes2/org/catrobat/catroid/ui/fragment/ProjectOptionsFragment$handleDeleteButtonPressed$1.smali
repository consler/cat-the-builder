.class final Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment$handleDeleteButtonPressed$1;
.super Ljava/lang/Object;
.source "ProjectOptionsFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;->handleDeleteButtonPressed()V
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
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
.field final synthetic $projectData:Lorg/catrobat/catroid/common/ProjectData;

.field final synthetic this$0:Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;Lorg/catrobat/catroid/common/ProjectData;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment$handleDeleteButtonPressed$1;->this$0:Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment$handleDeleteButtonPressed$1;->$projectData:Lorg/catrobat/catroid/common/ProjectData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "$noName_0"    # Landroid/content/DialogInterface;
    .param p2, "$noName_1"    # I

    .line 206
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment$handleDeleteButtonPressed$1;->this$0:Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;

    .line 207
    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment$handleDeleteButtonPressed$1;->$projectData:Lorg/catrobat/catroid/common/ProjectData;

    .line 206
    invoke-static {v0, v1}, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;->access$deleteProject(Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;Lorg/catrobat/catroid/common/ProjectData;)V

    .line 209
    return-void
.end method
