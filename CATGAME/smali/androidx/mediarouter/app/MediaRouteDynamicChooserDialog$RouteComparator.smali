.class final Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RouteComparator;
.super Ljava/lang/Object;
.source "MediaRouteDynamicChooserDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RouteComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final sInstance:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RouteComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 281
    new-instance v0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RouteComparator;

    invoke-direct {v0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RouteComparator;-><init>()V

    sput-object v0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RouteComparator;->sInstance:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RouteComparator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)I
    .locals 2
    .param p1, "lhs"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .param p2, "rhs"    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 285
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 280
    check-cast p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    check-cast p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, p1, p2}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RouteComparator;->compare(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)I

    move-result p1

    return p1
.end method
