.class final Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$setupProjectsRV$2;
.super Ljava/lang/Object;
.source "MainMenuFragment.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->setupProjectsRV()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "+",
        "Lorg/catrobat/catroid/common/ProjectData;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "projects",
        "",
        "Lorg/catrobat/catroid/common/ProjectData;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$setupProjectsRV$2;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$setupProjectsRV$2;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public final onChanged(Ljava/util/List;)V
    .locals 2
    .param p1, "projects"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/common/ProjectData;",
            ">;)V"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$setupProjectsRV$2;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;

    const-string v1, "projects"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->access$setAndLoadCurrentProject(Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;Ljava/util/List;)V

    .line 170
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$setupProjectsRV$2;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;

    invoke-static {v0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->access$updateRecyclerview(Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;Ljava/util/List;)V

    .line 171
    return-void
.end method
