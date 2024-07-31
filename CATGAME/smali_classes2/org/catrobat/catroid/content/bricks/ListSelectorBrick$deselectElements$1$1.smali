.class final Lorg/catrobat/catroid/content/bricks/ListSelectorBrick$deselectElements$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ListSelectorBrick.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->deselectElements(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/catrobat/catroid/formulaeditor/UserList;",
        "Ljava/lang/Boolean;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "list",
        "Lorg/catrobat/catroid/formulaeditor/UserList;",
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
.field final synthetic $element:Lorg/catrobat/catroid/formulaeditor/UserData;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/formulaeditor/UserData;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick$deselectElements$1$1;->$element:Lorg/catrobat/catroid/formulaeditor/UserData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick$deselectElements$1$1;->invoke(Lorg/catrobat/catroid/formulaeditor/UserList;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/catrobat/catroid/formulaeditor/UserList;)Z
    .locals 2
    .param p1, "list"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/UserList;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick$deselectElements$1$1;->$element:Lorg/catrobat/catroid/formulaeditor/UserData;

    invoke-interface {v1}, Lorg/catrobat/catroid/formulaeditor/UserData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
