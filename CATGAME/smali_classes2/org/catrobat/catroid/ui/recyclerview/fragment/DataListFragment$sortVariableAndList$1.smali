.class final Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortVariableAndList$1;
.super Ljava/lang/Object;
.source "DataListFragment.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->sortVariableAndList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
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
        "Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;",
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
        "Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;",
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
.field public static final INSTANCE:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortVariableAndList$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortVariableAndList$1;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortVariableAndList$1;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortVariableAndList$1;->INSTANCE:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortVariableAndList$1;

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
    check-cast p1, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;

    check-cast p2, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$sortVariableAndList$1;->compare(Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;)I

    move-result p1

    return p1
.end method

.method public final compare(Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;)I
    .locals 3
    .param p1, "item1"    # Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;
    .param p2, "item2"    # Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;

    const-string v0, "item1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "item2.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
