.class public final Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;
.super Ljava/lang/Object;
.source "DrawerLayoutViewHolder.kt"

# interfaces
.implements Lorg/catrobat/paintroid/contract/MainActivityContracts$DrawerLayoutViewHolder;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
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
        "openDrawer",
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
.field private final drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method public constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 1
    .param p1, "drawerLayout"    # Landroidx/drawerlayout/widget/DrawerLayout;

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
    .param p1, "gravity"    # I
    .param p2, "animate"    # Z

    .line 26
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(IZ)V

    .line 27
    return-void
.end method

.method public isDrawerOpen(I)Z
    .locals 1
    .param p1, "gravity"    # I

    .line 29
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    return v0
.end method

.method public openDrawer(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 32
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/DrawerLayoutViewHolder;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    .line 33
    return-void
.end method
