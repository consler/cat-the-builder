.class final Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortUserList$2;
.super Ljava/lang/Object;
.source "DataListFragment.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->sortUserList(Ljava/util/List;Z)V
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
        "Ljava/util/Comparator<",
        "Lorg/catrobat/catroid/formulaeditor/UserList;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "item1",
        "Lorg/catrobat/catroid/formulaeditor/UserList;",
        "item2",
        "compare"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortUserList$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortUserList$2;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortUserList$2;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortUserList$2;->INSTANCE:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortUserList$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 66
    check-cast p1, Lorg/catrobat/catroid/formulaeditor/UserList;

    check-cast p2, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortUserList$2;->compare(Lorg/catrobat/catroid/formulaeditor/UserList;Lorg/catrobat/catroid/formulaeditor/UserList;)I

    move-result p1

    return p1
.end method

.method public final compare(Lorg/catrobat/catroid/formulaeditor/UserList;Lorg/catrobat/catroid/formulaeditor/UserList;)I
    .locals 2
    .param p1, "item1"    # Lorg/catrobat/catroid/formulaeditor/UserList;
    .param p2, "item2"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    const-string v0, "item1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/UserList;->getInitialIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/catrobat/catroid/formulaeditor/UserList;->getInitialIndex()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    return v0
.end method
