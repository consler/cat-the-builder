.class final Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$showDeleteAlert$1;
.super Ljava/lang/Object;
.source "ListSelectorFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->showDeleteAlert(Ljava/util/List;)V
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
.field final synthetic $selectedItems:Ljava/util/List;

.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$showDeleteAlert$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$showDeleteAlert$1;->$selectedItems:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "$noName_0"    # Landroid/content/DialogInterface;
    .param p2, "$noName_1"    # I

    .line 178
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$showDeleteAlert$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;

    .line 179
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$showDeleteAlert$1;->$selectedItems:Ljava/util/List;

    .line 178
    invoke-static {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->access$deleteItems(Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;Ljava/util/List;)V

    .line 181
    return-void
.end method
