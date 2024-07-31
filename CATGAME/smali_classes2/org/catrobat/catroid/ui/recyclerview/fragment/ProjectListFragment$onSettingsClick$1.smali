.class final Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$onSettingsClick$1;
.super Ljava/lang/Object;
.source "ProjectListFragment.kt"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->onSettingsClick(Lorg/catrobat/catroid/common/ProjectData;Landroid/view/View;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "menuItem",
        "Landroid/view/MenuItem;",
        "kotlin.jvm.PlatformType",
        "onMenuItemClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $item:Lorg/catrobat/catroid/common/ProjectData;

.field final synthetic $itemList:Ljava/util/List;

.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;Ljava/util/List;Lorg/catrobat/catroid/common/ProjectData;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$onSettingsClick$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$onSettingsClick$1;->$itemList:Ljava/util/List;

    iput-object p3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$onSettingsClick$1;->$item:Lorg/catrobat/catroid/common/ProjectData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 494
    const-string v0, "menuItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 496
    :sswitch_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$onSettingsClick$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$onSettingsClick$1;->$item:Lorg/catrobat/catroid/common/ProjectData;

    check-cast v1, Lorg/catrobat/catroid/common/Nameable;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->showRenameDialog(Lorg/catrobat/catroid/common/Nameable;)V

    goto :goto_0

    .line 498
    :sswitch_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$onSettingsClick$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$onSettingsClick$1;->$item:Lorg/catrobat/catroid/common/ProjectData;

    invoke-static {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->access$showProjectOptionsFragment(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;Lorg/catrobat/catroid/common/ProjectData;)V

    goto :goto_0

    .line 497
    :sswitch_2
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$onSettingsClick$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$onSettingsClick$1;->$itemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->deleteItems(Ljava/util/List;)V

    goto :goto_0

    .line 495
    :sswitch_3
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$onSettingsClick$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$onSettingsClick$1;->$itemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->copyItems(Ljava/util/List;)V

    .line 499
    :goto_0
    nop

    .line 500
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0327 -> :sswitch_3
        0x7f0a0337 -> :sswitch_2
        0x7f0a0555 -> :sswitch_1
        0x7f0a0577 -> :sswitch_0
    .end sparse-switch
.end method
