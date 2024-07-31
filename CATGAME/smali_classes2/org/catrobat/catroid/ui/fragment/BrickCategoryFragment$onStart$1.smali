.class final Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$onStart$1;
.super Ljava/lang/Object;
.source "BrickCategoryFragment.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->onStart()V
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
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\n\u00a2\u0006\u0002\u0008\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "parent",
        "Landroid/widget/AdapterView;",
        "view",
        "Landroid/view/View;",
        "position",
        "",
        "id",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$onStart$1;->this$0:Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$onStart$1;->this$0:Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->access$getViewSwitchLock$p(Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$onStart$1;->this$0:Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->access$getScriptFragment$p(Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;)Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$OnCategorySelectedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$onStart$1;->this$0:Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->access$getAdapter$p(Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;)Lorg/catrobat/catroid/ui/adapter/BrickCategoryAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p3}, Lorg/catrobat/catroid/ui/adapter/BrickCategoryAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$OnCategorySelectedListener;->onCategorySelected(Ljava/lang/String;)V

    .line 96
    return-void

    .line 95
    :cond_2
    return-void
.end method

.method public bridge synthetic onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 54
    invoke-virtual/range {p0 .. p5}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$onStart$1;->invoke(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
