.class final Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$showRenameDialog$1;
.super Ljava/lang/Object;
.source "ListSelectorFragment.kt"

# interfaces
.implements Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->showRenameDialog(Ljava/util/List;)V
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "textInput",
        "",
        "onPositiveButtonClick"
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

.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;Lorg/catrobat/catroid/formulaeditor/UserData;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$showRenameDialog$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$showRenameDialog$1;->$item:Lorg/catrobat/catroid/formulaeditor/UserData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPositiveButtonClick(Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 2
    .param p1, "$noName_0"    # Landroid/content/DialogInterface;
    .param p2, "textInput"    # Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$showRenameDialog$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;

    .line 202
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$showRenameDialog$1;->$item:Lorg/catrobat/catroid/formulaeditor/UserData;

    .line 203
    nop

    .line 201
    invoke-static {v0, v1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->access$renameItem(Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;Lorg/catrobat/catroid/formulaeditor/UserData;Ljava/lang/String;)V

    .line 205
    return-void
.end method
