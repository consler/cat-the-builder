.class public final Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;
.super Ljava/lang/Object;
.source "BottomBarViewHolder.kt"

# interfaces
.implements Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomBarViewHolder;",
        "layout",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "isVisible",
        "",
        "()Z",
        "getLayout",
        "()Landroid/view/View;",
        "hide",
        "",
        "show",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final layout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "layout"    # Landroid/view/View;

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;->layout:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final getLayout()Landroid/view/View;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;->layout:Landroid/view/View;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 33
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;->layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;->layout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public show()V
    .locals 2

    .line 29
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomBarViewHolder;->layout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    return-void
.end method
