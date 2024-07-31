.class Lcom/squareup/picasso/DeferredRequestCreator;
.super Ljava/lang/Object;
.source "DeferredRequestCreator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field callback:Lcom/squareup/picasso/Callback;

.field private final creator:Lcom/squareup/picasso/RequestCreator;

.field final target:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/squareup/picasso/RequestCreator;Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V
    .locals 1
    .param p1, "creator"    # Lcom/squareup/picasso/RequestCreator;
    .param p2, "target"    # Landroid/widget/ImageView;
    .param p3, "callback"    # Lcom/squareup/picasso/Callback;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/squareup/picasso/DeferredRequestCreator;->creator:Lcom/squareup/picasso/RequestCreator;

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/squareup/picasso/DeferredRequestCreator;->target:Ljava/lang/ref/WeakReference;

    .line 34
    iput-object p3, p0, Lcom/squareup/picasso/DeferredRequestCreator;->callback:Lcom/squareup/picasso/Callback;

    .line 36
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 40
    invoke-virtual {p2}, Landroid/widget/ImageView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0, p2}, Lcom/squareup/picasso/DeferredRequestCreator;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/squareup/picasso/DeferredRequestCreator;->creator:Lcom/squareup/picasso/RequestCreator;

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->clearTag()Lcom/squareup/picasso/RequestCreator;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/picasso/DeferredRequestCreator;->callback:Lcom/squareup/picasso/Callback;

    .line 83
    iget-object v0, p0, Lcom/squareup/picasso/DeferredRequestCreator;->target:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 84
    .local v0, "target":Landroid/widget/ImageView;
    if-nez v0, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/squareup/picasso/DeferredRequestCreator;->target:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 89
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 91
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 92
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 95
    :cond_1
    return-void
.end method

.method getTag()Ljava/lang/Object;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/squareup/picasso/DeferredRequestCreator;->creator:Lcom/squareup/picasso/RequestCreator;

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPreDraw()Z
    .locals 7

    .line 54
    iget-object v0, p0, Lcom/squareup/picasso/DeferredRequestCreator;->target:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 55
    .local v0, "target":Landroid/widget/ImageView;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 56
    return v1

    .line 59
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 60
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 61
    return v1

    .line 64
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    .line 65
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    .line 67
    .local v4, "height":I
    if-lez v3, :cond_3

    if-gtz v4, :cond_2

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 72
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 73
    iget-object v5, p0, Lcom/squareup/picasso/DeferredRequestCreator;->target:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->clear()V

    .line 75
    iget-object v5, p0, Lcom/squareup/picasso/DeferredRequestCreator;->creator:Lcom/squareup/picasso/RequestCreator;

    invoke-virtual {v5}, Lcom/squareup/picasso/RequestCreator;->unfit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    iget-object v6, p0, Lcom/squareup/picasso/DeferredRequestCreator;->callback:Lcom/squareup/picasso/Callback;

    invoke-virtual {v5, v0, v6}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    .line 76
    return v1

    .line 68
    :cond_3
    :goto_0
    return v1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 47
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 51
    return-void
.end method
