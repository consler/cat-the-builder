.class final Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$renameItem$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ProjectListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->renameItem(Lorg/catrobat/catroid/common/ProjectData;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "success",
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
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$renameItem$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 76
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$renameItem$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 1
    .param p1, "success"    # Z

    .line 436
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$renameItem$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;

    invoke-static {v0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->access$onRenameFinished(Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;Z)V

    return-void
.end method
