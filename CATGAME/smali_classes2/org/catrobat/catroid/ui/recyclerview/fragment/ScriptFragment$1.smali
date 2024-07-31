.class Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment$1;
.super Ljava/lang/Object;
.source "ScriptFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->scrollToFocusItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

.field final synthetic val$finalScrollToIndex:I


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    .line 1044
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    iput p2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment$1;->val$finalScrollToIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1047
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->access$000(Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;)Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    move-result-object v0

    iget v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment$1;->val$finalScrollToIndex:I

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->setSelection(I)V

    .line 1048
    return-void
.end method
