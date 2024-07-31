.class Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$1;
.super Ljava/lang/Object;
.source "ScratchSearchResultsFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->onSettingsClick(Lorg/catrobat/catroid/common/ScratchProgramData;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

.field final synthetic val$item:Lorg/catrobat/catroid/common/ScratchProgramData;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;Lorg/catrobat/catroid/common/ScratchProgramData;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    .line 384
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$1;->val$item:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 388
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    const v1, 0x7f120223

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment$1;->val$item:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->access$400(Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;Ljava/util/List;)V

    .line 391
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
