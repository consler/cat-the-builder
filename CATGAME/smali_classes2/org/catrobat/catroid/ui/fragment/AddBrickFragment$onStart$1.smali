.class final Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$onStart$1;
.super Ljava/lang/Object;
.source "AddBrickFragment.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddBrickFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddBrickFragment.kt\norg/catrobat/catroid/ui/fragment/AddBrickFragment$onStart$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,176:1\n1#2:177\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\n\u00a2\u0006\u0002\u0008\n"
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
        "onItemClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$onStart$1;->this$0:Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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

    .line 114
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$onStart$1;->this$0:Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->access$getAdapter$p(Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;)Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;->getItem(I)Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    .local v0, "it":Lorg/catrobat/catroid/content/bricks/Brick;
    const/4 v1, 0x0

    .line 114
    .local v1, "$i$a$-let-AddBrickFragment$onStart$1$1":I
    nop

    .line 115
    nop

    .line 116
    iget-object v2, p0, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$onStart$1;->this$0:Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Lorg/catrobat/catroid/ui/SpriteActivity;

    .line 117
    iget-object v3, p0, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$onStart$1;->this$0:Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;

    invoke-static {v3}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->access$getAddBrickListener$p(Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;)Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;

    move-result-object v3

    .line 118
    iget-object v4, p0, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$onStart$1;->this$0:Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;

    invoke-virtual {v4}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    const-string v5, "parentFragmentManager"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    sget-object v5, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->ADD_BRICK_FRAGMENT_TAG:Ljava/lang/String;

    const-string v6, "ADD_BRICK_FRAGMENT_TAG"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-static {v0, v2, v3, v4, v5}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragmentKt;->addBrickToScript(Lorg/catrobat/catroid/content/bricks/Brick;Lorg/catrobat/catroid/ui/SpriteActivity;Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 119
    nop

    .end local v0    # "it":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v1    # "$i$a$-let-AddBrickFragment$onStart$1$1":I
    goto :goto_0

    .line 116
    .restart local v0    # "it":Lorg/catrobat/catroid/content/bricks/Brick;
    .restart local v1    # "$i$a$-let-AddBrickFragment$onStart$1$1":I
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type org.catrobat.catroid.ui.SpriteActivity"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    .end local v0    # "it":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v1    # "$i$a$-let-AddBrickFragment$onStart$1$1":I
    :cond_1
    :goto_0
    nop

    .line 120
    return-void
.end method
