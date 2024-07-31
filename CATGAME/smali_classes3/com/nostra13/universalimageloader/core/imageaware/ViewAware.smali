.class public abstract Lcom/nostra13/universalimageloader/core/imageaware/ViewAware;
.super Ljava/lang/Object;
.source "ViewAware.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;


# static fields
.field public static final WARN_CANT_SET_BITMAP:Ljava/lang/String; = "Can\'t set a bitmap into view. You should call ImageLoader on UI thread for it."

.field public static final WARN_CANT_SET_DRAWABLE:Ljava/lang/String; = "Can\'t set a drawable into view. You should call ImageLoader on UI thread for it."


# instance fields
.field protected checkActualViewSize:Z

.field protected viewRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 50
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ViewAware;-><init>(Landroid/view/View;Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "checkActualViewSize"    # Z

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-eqz p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    .line 73
    iput-boolean p2, p0, Lcom/nostra13/universalimageloader/core/imageaware/ViewAware;->checkActualViewSize:Z

    .line 74
    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "view must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getHeight()I
    .locals 5

    .line 111
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 112
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 114
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x0

    .line 115
    .local v2, "height":I
    iget-boolean v3, p0, Lcom/nostra13/universalimageloader/core/imageaware/ViewAware;->checkActualViewSize:Z

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 118
    :cond_0
    if-gtz v2, :cond_1

    if-eqz v1, :cond_1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 119
    :cond_1
    return v2

    .line 121
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "height":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public getId()I
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 142
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getScaleType()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .locals 1

    .line 126
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    return-object v0
.end method

.method public getWidth()I
    .locals 5

    .line 87
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 88
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 90
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x0

    .line 91
    .local v2, "width":I
    iget-boolean v3, p0, Lcom/nostra13/universalimageloader/core/imageaware/ViewAware;->checkActualViewSize:Z

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 94
    :cond_0
    if-gtz v2, :cond_1

    if-eqz v1, :cond_1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 95
    :cond_1
    return v2

    .line 97
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "width":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public getWrappedView()Landroid/view/View;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public isCollected()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 161
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 162
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 163
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0, p1, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ViewAware;->setImageBitmapInto(Landroid/graphics/Bitmap;Landroid/view/View;)V

    .line 165
    const/4 v1, 0x1

    return v1

    .line 167
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    goto :goto_0

    .line 168
    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Can\'t set a bitmap into view. You should call ImageLoader on UI thread for it."

    invoke-static {v1, v0}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :goto_0
    return v2
.end method

.method protected abstract setImageBitmapInto(Landroid/graphics/Bitmap;Landroid/view/View;)V
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 147
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 149
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0, p1, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ViewAware;->setImageDrawableInto(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 151
    const/4 v1, 0x1

    return v1

    .line 153
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    goto :goto_0

    .line 154
    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Can\'t set a drawable into view. You should call ImageLoader on UI thread for it."

    invoke-static {v1, v0}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :goto_0
    return v2
.end method

.method protected abstract setImageDrawableInto(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
.end method
