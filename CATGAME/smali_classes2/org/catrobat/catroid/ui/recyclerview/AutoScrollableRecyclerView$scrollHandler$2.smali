.class final Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$scrollHandler$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AutoScrollableRecyclerView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$ScrollHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$ScrollHandler;",
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
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$scrollHandler$2;->this$0:Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$scrollHandler$2;->invoke()Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$ScrollHandler;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$ScrollHandler;
    .locals 2

    .line 43
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$ScrollHandler;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$scrollHandler$2;->this$0:Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$ScrollHandler;-><init>(Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;)V

    return-object v0
.end method
