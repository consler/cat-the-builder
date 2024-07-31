.class final Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V
    .locals 0

    .line 1183
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1184
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 1188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1189
    .local v0, "id":I
    const/4 v1, 0x1

    const v2, 0x1020019

    if-eq v0, v2, :cond_7

    const v3, 0x102001a

    if-ne v0, v3, :cond_0

    goto/16 :goto_2

    .line 1196
    :cond_0
    sget v2, Landroidx/mediarouter/R$id;->mr_control_playback_ctrl:I

    if-ne v0, v2, :cond_6

    .line 1197
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v2, v2, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v2, v2, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v2, :cond_a

    .line 1198
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v2, v2, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1199
    .local v1, "isPlaying":Z
    :goto_0
    const/4 v2, 0x0

    .line 1200
    .local v2, "actionDescResId":I
    if-eqz v1, :cond_2

    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-virtual {v3}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->isPauseActionSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1201
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v3, v3, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    .line 1202
    sget v2, Landroidx/mediarouter/R$string;->mr_controller_pause:I

    goto :goto_1

    .line 1203
    :cond_2
    if-eqz v1, :cond_3

    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-virtual {v3}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->isStopActionSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1204
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v3, v3, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->stop()V

    .line 1205
    sget v2, Landroidx/mediarouter/R$string;->mr_controller_stop:I

    goto :goto_1

    .line 1206
    :cond_3
    if-nez v1, :cond_4

    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-virtual {v3}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->isPlayActionSupported()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1207
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v3, v3, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    .line 1208
    sget v2, Landroidx/mediarouter/R$string;->mr_controller_play:I

    .line 1211
    :cond_4
    :goto_1
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v3, v3, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v3, v3, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 1213
    const/16 v3, 0x4000

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    .line 1215
    .local v3, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v4, v4, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1217
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v5, v5, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v4, v4, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1220
    .end local v1    # "isPlaying":Z
    .end local v2    # "actionDescResId":I
    .end local v3    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_5
    goto :goto_3

    .line 1221
    :cond_6
    sget v1, Landroidx/mediarouter/R$id;->mr_close:I

    if-ne v0, v1, :cond_a

    .line 1222
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-virtual {v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->dismiss()V

    goto :goto_3

    .line 1190
    :cond_7
    :goto_2
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v3, v3, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1191
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v3, v3, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    if-ne v0, v2, :cond_8

    const/4 v1, 0x2

    :cond_8
    invoke-virtual {v3, v1}, Landroidx/mediarouter/media/MediaRouter;->unselect(I)V

    .line 1195
    :cond_9
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-virtual {v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->dismiss()V

    .line 1224
    :cond_a
    :goto_3
    return-void
.end method
