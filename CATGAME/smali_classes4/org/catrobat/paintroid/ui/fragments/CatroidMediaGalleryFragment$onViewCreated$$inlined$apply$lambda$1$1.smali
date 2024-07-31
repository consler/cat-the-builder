.class public final Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1$1;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "CatroidMediaGalleryFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J$\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\"\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e\u00b8\u0006\u0000"
    }
    d2 = {
        "org/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$1$1$1",
        "Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;",
        "onLoadingCancelled",
        "",
        "imageUri",
        "",
        "view",
        "Landroid/view/View;",
        "onLoadingComplete",
        "loadedImage",
        "Landroid/graphics/Bitmap;",
        "onLoadingFailed",
        "failReason",
        "Lcom/nostra13/universalimageloader/core/assist/FailReason;",
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
.field final synthetic this$0:Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1;

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1$1;->this$0:Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1;

    .line 71
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    const-string v0, "imageUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1$1;->this$0:Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1;

    iget-object v0, v0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1;->this$0:Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->access$getListener$p(Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;)Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;->dismissProgressDialog()V

    .line 85
    :cond_0
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadedImage"    # Landroid/graphics/Bitmap;

    const-string v0, "imageUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    if-eqz p3, :cond_0

    .line 78
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1$1;->this$0:Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1;

    iget-object v0, v0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1;->this$0:Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->access$getListener$p(Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;)Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p3}, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;->bitmapLoadedFromSource(Landroid/graphics/Bitmap;)V

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1$1;->this$0:Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1;

    iget-object v0, v0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1;->this$0:Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->access$getListener$p(Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;)Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;->dismissProgressDialog()V

    .line 81
    :cond_1
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 1
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    const-string v0, "imageUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failReason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1$1;->this$0:Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1;

    iget-object v0, v0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1;->this$0:Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->access$getListener$p(Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;)Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;->dismissProgressDialog()V

    .line 93
    :cond_0
    return-void
.end method
