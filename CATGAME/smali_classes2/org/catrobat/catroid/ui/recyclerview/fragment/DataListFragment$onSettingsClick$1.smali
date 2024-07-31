.class final Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$onSettingsClick$1;
.super Ljava/lang/Object;
.source "DataListFragment.kt"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->onSettingsClick(Lorg/catrobat/catroid/formulaeditor/UserData;Landroid/view/View;)V
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
.field final synthetic $item:Lorg/catrobat/catroid/formulaeditor/UserData;

.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;Lorg/catrobat/catroid/formulaeditor/UserData;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$onSettingsClick$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$onSettingsClick$1;->$item:Lorg/catrobat/catroid/formulaeditor/UserData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 533
    const-string v0, "menuItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 534
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$onSettingsClick$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;

    const v2, 0x7f120703

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$onSettingsClick$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$onSettingsClick$1;->$item:Lorg/catrobat/catroid/formulaeditor/UserData;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->access$showRenameDialog(Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;Ljava/util/List;)V

    goto :goto_0

    .line 535
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$onSettingsClick$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;

    const v2, 0x7f120257

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$onSettingsClick$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$onSettingsClick$1;->$item:Lorg/catrobat/catroid/formulaeditor/UserData;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->access$showDeleteAlert(Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;Ljava/util/List;)V

    goto :goto_0

    .line 536
    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$onSettingsClick$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;

    const v2, 0x7f1202c9

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$onSettingsClick$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$onSettingsClick$1;->$item:Lorg/catrobat/catroid/formulaeditor/UserData;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->access$showEditDialog(Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;Ljava/util/List;)V

    .line 537
    :cond_2
    :goto_0
    nop

    .line 538
    const/4 v0, 0x1

    return v0
.end method
