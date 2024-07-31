.class Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog$2;
.super Ljava/lang/Object;
.source "SelectCastDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;

.field final synthetic val$alertDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;

    .line 90
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog$2;->this$0:Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog$2;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 93
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    monitor-enter p0

    .line 94
    :try_start_0
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/cast/CastManager;->getRouteInfos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 95
    .local v0, "routeInfo":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/cast/CastManager;->setCallback()V

    .line 96
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/cast/CastManager;->startCastButtonAnimation()V

    .line 97
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/cast/CastManager;->selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 98
    iget-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog$2;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 99
    .end local v0    # "routeInfo":Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    monitor-exit p0

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
