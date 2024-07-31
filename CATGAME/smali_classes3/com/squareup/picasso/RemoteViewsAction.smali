.class abstract Lcom/squareup/picasso/RemoteViewsAction;
.super Lcom/squareup/picasso/Action;
.source "RemoteViewsAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/RemoteViewsAction$NotificationAction;,
        Lcom/squareup/picasso/RemoteViewsAction$AppWidgetAction;,
        Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/picasso/Action<",
        "Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;",
        ">;"
    }
.end annotation


# instance fields
.field callback:Lcom/squareup/picasso/Callback;

.field final remoteViews:Landroid/widget/RemoteViews;

.field private target:Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;

.field final viewId:I


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Request;Landroid/widget/RemoteViews;IIIILjava/lang/Object;Ljava/lang/String;Lcom/squareup/picasso/Callback;)V
    .locals 12
    .param p1, "picasso"    # Lcom/squareup/picasso/Picasso;
    .param p2, "data"    # Lcom/squareup/picasso/Request;
    .param p3, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p4, "viewId"    # I
    .param p5, "errorResId"    # I
    .param p6, "memoryPolicy"    # I
    .param p7, "networkPolicy"    # I
    .param p8, "tag"    # Ljava/lang/Object;
    .param p9, "key"    # Ljava/lang/String;
    .param p10, "callback"    # Lcom/squareup/picasso/Callback;

    .line 37
    move-object v11, p0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p5

    move-object/from16 v8, p9

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/squareup/picasso/Action;-><init>(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;Lcom/squareup/picasso/Request;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 38
    move-object v0, p3

    iput-object v0, v11, Lcom/squareup/picasso/RemoteViewsAction;->remoteViews:Landroid/widget/RemoteViews;

    .line 39
    move/from16 v1, p4

    iput v1, v11, Lcom/squareup/picasso/RemoteViewsAction;->viewId:I

    .line 40
    move-object/from16 v2, p10

    iput-object v2, v11, Lcom/squareup/picasso/RemoteViewsAction;->callback:Lcom/squareup/picasso/Callback;

    .line 41
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/squareup/picasso/Action;->cancel()V

    .line 53
    iget-object v0, p0, Lcom/squareup/picasso/RemoteViewsAction;->callback:Lcom/squareup/picasso/Callback;

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/picasso/RemoteViewsAction;->callback:Lcom/squareup/picasso/Callback;

    .line 56
    :cond_0
    return-void
.end method

.method complete(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;
    .param p2, "from"    # Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 44
    iget-object v0, p0, Lcom/squareup/picasso/RemoteViewsAction;->remoteViews:Landroid/widget/RemoteViews;

    iget v1, p0, Lcom/squareup/picasso/RemoteViewsAction;->viewId:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 45
    invoke-virtual {p0}, Lcom/squareup/picasso/RemoteViewsAction;->update()V

    .line 46
    iget-object v0, p0, Lcom/squareup/picasso/RemoteViewsAction;->callback:Lcom/squareup/picasso/Callback;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0}, Lcom/squareup/picasso/Callback;->onSuccess()V

    .line 49
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 59
    iget v0, p0, Lcom/squareup/picasso/RemoteViewsAction;->errorResId:I

    if-eqz v0, :cond_0

    .line 60
    iget v0, p0, Lcom/squareup/picasso/RemoteViewsAction;->errorResId:I

    invoke-virtual {p0, v0}, Lcom/squareup/picasso/RemoteViewsAction;->setImageResource(I)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/RemoteViewsAction;->callback:Lcom/squareup/picasso/Callback;

    if-eqz v0, :cond_1

    .line 63
    invoke-interface {v0, p1}, Lcom/squareup/picasso/Callback;->onError(Ljava/lang/Exception;)V

    .line 65
    :cond_1
    return-void
.end method

.method getTarget()Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/squareup/picasso/RemoteViewsAction;->target:Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;

    iget-object v1, p0, Lcom/squareup/picasso/RemoteViewsAction;->remoteViews:Landroid/widget/RemoteViews;

    iget v2, p0, Lcom/squareup/picasso/RemoteViewsAction;->viewId:I

    invoke-direct {v0, v1, v2}, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;-><init>(Landroid/widget/RemoteViews;I)V

    iput-object v0, p0, Lcom/squareup/picasso/RemoteViewsAction;->target:Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/RemoteViewsAction;->target:Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;

    return-object v0
.end method

.method bridge synthetic getTarget()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/squareup/picasso/RemoteViewsAction;->getTarget()Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;

    move-result-object v0

    return-object v0
.end method

.method setImageResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 75
    iget-object v0, p0, Lcom/squareup/picasso/RemoteViewsAction;->remoteViews:Landroid/widget/RemoteViews;

    iget v1, p0, Lcom/squareup/picasso/RemoteViewsAction;->viewId:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 76
    invoke-virtual {p0}, Lcom/squareup/picasso/RemoteViewsAction;->update()V

    .line 77
    return-void
.end method

.method abstract update()V
.end method
