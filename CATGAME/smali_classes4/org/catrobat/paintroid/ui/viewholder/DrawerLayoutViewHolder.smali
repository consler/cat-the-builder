.class public final Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;
.super Ljava/lang/Object;
.source "DrawerLayoutViewHolder.kt"

# interfaces
.implements Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;",
        "drawerLayout",
        "Landroidx/drawerlayout/widget/DrawerLayout;",
        "(Landroidx/drawerlayout/widget/DrawerLayout;)V",
        "closeDrawer",
        "",
        "gravity",
        "",
        "animate",
        "",
        "isDrawerOpen",
        "isDrawerVisible",
        "openDrawer",
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method public constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 1

    const-string v0, "drawerLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    return-void
.end method


# virtual methods
.method public closeDrawer(IZ)V
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(IZ)V

    return-void
.end method

.method public isDrawerOpen(I)Z
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result p1

    return p1
.end method

.method public isDrawerVisible(I)Z
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result p1

    return p1
.end method

.method public openDrawer(I)V
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    return-void
.end method
