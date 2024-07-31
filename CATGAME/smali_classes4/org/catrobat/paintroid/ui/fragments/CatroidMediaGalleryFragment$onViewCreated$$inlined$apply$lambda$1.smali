.class final Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "CatroidMediaGalleryFragment.kt"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0006\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0007\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0008\u001a\u00020\tH\n\u00a2\u0006\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "<anonymous>",
        "",
        "url",
        "",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "<anonymous parameter 2>",
        "<anonymous parameter 3>",
        "<anonymous parameter 4>",
        "",
        "onDownloadStart",
        "org/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1;->this$0:Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "$noName_1"    # Ljava/lang/String;
    .param p3, "$noName_2"    # Ljava/lang/String;
    .param p4, "$noName_3"    # Ljava/lang/String;
    .param p5, "$noName_4"    # J

    .line 66
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    .line 67
    .local v0, "imageLoader":Lcom/nostra13/universalimageloader/core/ImageLoader;
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1;->this$0:Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->createDefault(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 68
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1;->this$0:Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;

    invoke-static {v1}, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->access$getListener$p(Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;)Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;->showProgressDialog()V

    .line 69
    :cond_0
    nop

    .line 70
    nop

    .line 71
    new-instance v1, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1$1;-><init>(Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1;)V

    check-cast v1, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 69
    invoke-virtual {v0, p1, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 96
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1;->this$0:Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->finish()V

    .line 97
    .end local v0    # "imageLoader":Lcom/nostra13/universalimageloader/core/ImageLoader;
    return-void
.end method
