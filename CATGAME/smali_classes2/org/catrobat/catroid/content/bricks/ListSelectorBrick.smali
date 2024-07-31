.class public abstract Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;
.super Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.source "ListSelectorBrick.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$ListSelectorInterface;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListSelectorBrick.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListSelectorBrick.kt\norg/catrobat/catroid/content/bricks/ListSelectorBrick\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,82:1\n768#2,11:83\n1819#2,2:94\n*E\n*S KotlinDebug\n*F\n+ 1 ListSelectorBrick.kt\norg/catrobat/catroid/content/bricks/ListSelectorBrick\n*L\n77#1,11:83\n77#1,2:94\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0012\u0010\u0012\u001a\u00020\u00132\n\u0010\u0014\u001a\u0006\u0012\u0002\u0008\u00030\u0015J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u0017H\u0016J\u0016\u0010\u001c\u001a\u00020\u00132\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0015H\u0016J\u0006\u0010\u001d\u001a\u00020\u0013J\u0008\u0010\u001e\u001a\u00020\u0013H\u0014R\u0014\u0010\u0005\u001a\u00020\u00068eX\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R \u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001f"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;",
        "Lorg/catrobat/catroid/content/bricks/BrickBaseType;",
        "Landroid/view/View$OnClickListener;",
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$ListSelectorInterface;",
        "()V",
        "selectorId",
        "",
        "getSelectorId",
        "()I",
        "userLists",
        "",
        "Lorg/catrobat/catroid/formulaeditor/UserList;",
        "getUserLists",
        "()Ljava/util/List;",
        "setUserLists",
        "(Ljava/util/List;)V",
        "clone",
        "Lorg/catrobat/catroid/content/bricks/Brick;",
        "deselectElements",
        "",
        "deletedElements",
        "",
        "getView",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "onClick",
        "view",
        "onUserListSelected",
        "setClickListeners",
        "updateSelectorText",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private userLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->userLists:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/catrobat/catroid/content/bricks/Brick;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 41
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;

    .line 42
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->userLists:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->userLists:Ljava/util/List;

    .line 43
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    return-object v1

    .line 41
    .end local v0    # "clone":Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type org.catrobat.catroid.content.bricks.ListSelectorBrick"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final deselectElements(Ljava/util/List;)V
    .locals 8
    .param p1, "deletedElements"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "deletedElements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filterIsInstance$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 83
    .local v1, "$i$f$filterIsInstance":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterIsInstanceTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 92
    .local v4, "$i$f$filterIsInstanceTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    instance-of v7, v6, Lorg/catrobat/catroid/formulaeditor/UserData;

    if-eqz v7, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterIsInstanceTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterIsInstanceTo":I
    check-cast v2, Ljava/util/List;

    .line 83
    nop

    .end local v0    # "$this$filterIsInstance$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filterIsInstance":I
    check-cast v2, Ljava/lang/Iterable;

    .line 77
    move-object v0, v2

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 94
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/catrobat/catroid/formulaeditor/UserData;

    .local v4, "element":Lorg/catrobat/catroid/formulaeditor/UserData;
    const/4 v5, 0x0

    .line 78
    .local v5, "$i$a$-forEach-ListSelectorBrick$deselectElements$1":I
    iget-object v6, p0, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->userLists:Ljava/util/List;

    new-instance v7, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick$deselectElements$1$1;

    invoke-direct {v7, v4}, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick$deselectElements$1$1;-><init>(Lorg/catrobat/catroid/formulaeditor/UserData;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 79
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "element":Lorg/catrobat/catroid/formulaeditor/UserData;
    .end local v5    # "$i$a$-forEach-ListSelectorBrick$deselectElements$1":I
    goto :goto_1

    .line 95
    :cond_2
    nop

    .line 80
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method protected abstract getSelectorId()I
.end method

.method public final getUserLists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->userLists:Ljava/util/List;

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 48
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->updateSelectorText()V

    .line 49
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->view:Landroid/view/View;

    const-string v1, "view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$Companion;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "view.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment$Companion;->showFragment(Landroid/content/Context;Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;)V

    .line 69
    return-void
.end method

.method public onUserListSelected(Ljava/util/List;)V
    .locals 1
    .param p1, "userLists"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;)V"
        }
    .end annotation

    const-string v0, "userLists"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->userLists:Ljava/util/List;

    .line 73
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->updateSelectorText()V

    .line 74
    return-void
.end method

.method public final setClickListeners()V
    .locals 2

    .line 63
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->view:Landroid/view/View;

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->getSelectorId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    .local v0, "brickFieldView":Landroid/widget/TextView;
    move-object v1, p0

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method public final setUserLists(Ljava/util/List;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->userLists:Ljava/util/List;

    return-void
.end method

.method protected updateSelectorText()V
    .locals 6

    .line 55
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->view:Landroid/view/View;

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->getSelectorId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    .local v0, "brickFieldView":Landroid/widget/TextView;
    const-string v1, "brickFieldView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->view:Landroid/view/View;

    const-string v2, "view"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 57
    nop

    .line 58
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->userLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->userLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 56
    const v4, 0x7f10001c

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method
