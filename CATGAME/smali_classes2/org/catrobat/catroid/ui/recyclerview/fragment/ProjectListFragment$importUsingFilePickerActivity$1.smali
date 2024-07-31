.class public final Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$importUsingFilePickerActivity$1;
.super Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;
.source "ProjectListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->importUsingFilePickerActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "org/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$importUsingFilePickerActivity$1",
        "Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;",
        "task",
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
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;ILjava/util/List;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;
    .param p2, "$super_call_param$1"    # I
    .param p3, "$super_call_param$2"    # Ljava/util/List;
    .param p4, "$super_call_param$3"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List;",
            "I)V"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$importUsingFilePickerActivity$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    invoke-direct {p0, p2, p3, p4}, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;-><init>(ILjava/util/List;I)V

    return-void
.end method


# virtual methods
.method public task()V
    .locals 4

    .line 242
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$importUsingFilePickerActivity$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    .line 243
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$importUsingFilePickerActivity$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    nop

    .line 242
    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 246
    return-void
.end method
